.class public final Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"


# static fields
.field public static mUniSystemuiWifiFactory:Lcom/unisoc/systemui/wifi/UniSystemuiWifiFactory;


# instance fields
.field public final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

.field public final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field public mListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {p10, p2, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {p11, p2, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/unisoc/systemui/UniSystemuiComponentFactory;->getInstance()Lcom/unisoc/systemui/UniSystemuiComponentFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/unisoc/systemui/UniSystemuiComponentFactory;->getWifiInstance(Landroid/content/Context;)Lcom/unisoc/systemui/wifi/UniSystemuiWifiFactory;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUniSystemuiWifiFactory:Lcom/unisoc/systemui/wifi/UniSystemuiWifiFactory;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.settings.WIFI_TETHER_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x78

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f13072c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUniSystemuiWifiFactory:Lcom/unisoc/systemui/wifi/UniSystemuiWifiFactory;

    invoke-virtual {v0}, Lcom/unisoc/systemui/wifi/UniSystemuiWifiFactory;->canEnableSoftap()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    const-string v2, "HotspotController"

    if-eqz v1, :cond_3

    sget-boolean p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "Ignoring setHotspotEnabled; waiting for terminal state."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    sget-boolean p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "Starting tethering"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v0, Landroid/net/TetheringManager$TetheringRequest$Builder;

    invoke-direct {v0, v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;->setShouldShowEntitlementUi(Z)Landroid/net/TetheringManager$TetheringRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p0, v1}, Landroid/net/TetheringManager;->stopTethering(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final handleDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    if-nez v4, :cond_2

    iget v3, v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v3, v1

    :goto_4
    const-string v4, "no_config_tethering"

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    instance-of v4, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-eqz v4, :cond_7

    check-cast p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-nez v0, :cond_6

    iget-boolean v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v2

    goto :goto_6

    :cond_6
    :goto_5
    move v0, v1

    :goto_6
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    goto :goto_a

    :cond_7
    if-nez v0, :cond_a

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget p2, p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v0, 0xd

    if-ne p2, v0, :cond_8

    move p2, v1

    goto :goto_7

    :cond_8
    move p2, v2

    :goto_7
    if-eqz p2, :cond_9

    goto :goto_8

    :cond_9
    move p2, v2

    goto :goto_9

    :cond_a
    :goto_8
    move p2, v1

    :goto_9
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget v0, p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled()Z

    move-result p2

    :goto_a
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f13072c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v3, :cond_b

    const v4, 0x7f080a59

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_c

    :cond_b
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_c

    const v4, 0x7f080a58

    goto :goto_b

    :cond_c
    const v4, 0x7f080a57

    :goto_b
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_c
    const-class v4, Landroid/widget/Switch;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "no_wifi_tethering"

    invoke-static {v4, v5}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    move v4, v1

    goto :goto_d

    :cond_d
    const-string v4, "WifiEntResUtils"

    const-string v5, "Wi-Fi Tethering isn\'t available due to user restriction."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    :goto_d
    if-nez p2, :cond_f

    if-eqz v4, :cond_f

    sget-object v5, Lcom/android/systemui/qs/tiles/HotspotTile;->mUniSystemuiWifiFactory:Lcom/unisoc/systemui/wifi/UniSystemuiWifiFactory;

    invoke-virtual {v5}, Lcom/unisoc/systemui/wifi/UniSystemuiWifiFactory;->canEnableSoftap()Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_e

    :cond_e
    move v5, v2

    goto :goto_f

    :cond_f
    :goto_e
    move v5, v1

    :goto_f
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v6, :cond_11

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v6, :cond_10

    goto :goto_10

    :cond_10
    move v6, v2

    goto :goto_11

    :cond_11
    :goto_10
    move v6, v1

    :goto_11
    if-eqz v5, :cond_12

    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_12

    :cond_12
    if-eqz v6, :cond_13

    const/4 v1, 0x2

    :cond_13
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_12
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    if-nez v4, :cond_14

    const p2, 0x7f130987

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_14
    if-eqz v3, :cond_15

    const p2, 0x7f13072f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_15
    if-eqz p2, :cond_16

    const p2, 0x7f13072d

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_16
    if-lez v0, :cond_17

    if-eqz v6, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f13072e

    invoke-static {p0, p2, v0}, Lcom/android/systemui/util/PluralMessageFormaterKt;->icuMessageFormat(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_17
    const/4 p0, 0x0

    :goto_13
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotSupported()Z

    move-result p0

    return p0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method
