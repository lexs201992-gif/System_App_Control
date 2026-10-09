.class public Lcom/android/internal/telephony/UniMultiSimSettingController;
.super Lcom/android/internal/telephony/MultiSimSettingController;
.source "UniMultiSimSettingController.java"

# interfaces
.implements Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UniMultiSimSettingController$UpdateDefaultAction;
    }
.end annotation


# static fields
.field private static final DATA_ENABLED_STATE_PROP:Ljava/lang/String; = "gsm.data.setenabled"

.field private static final DBG:Z = true

.field private static final EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x8

.field private static final LIST_DATA:I = 0x1

.field private static final LIST_SMS:I = 0x3

.field private static final LIST_VOICE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UniMultiSimSettingController"

.field private static final PREFS_DEFSUBID_INFO:Ljava/lang/String; = "prefs.defaultxsubid.info"

.field private static final PRIMARY_SUB_INITIALIZED:I = 0x6

.field private static final PRIMARY_SUB_NO_CHANGE:I = 0x0

.field private static final PRIMARY_SUB_NO_SELECTED_BY_USER:I = 0x8

.field private static final PRIMARY_SUB_SELECTED_BY_USER:I = 0x7

.field private static final SMS_POSITION:Ljava/lang/String; = "1"

.field private static final VOICE_POSITION:Ljava/lang/String; = "0"

.field private static mClientIdController:Lcom/android/internal/telephony/ClientIdController;


# instance fields
.field private mInit:Z

.field private mIsIccChanged:Z

.field private mIsMtnSimLock:Z

.field private mIsOrangeSimLock:Z

.field private mIsPrefSetbefore:Z

.field private mNeedPopUpSimSettings:Z

.field private mPrimarySubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupWizardCompleteObserver:Landroid/database/ContentObserver;

.field private mSimLockVersion:I

.field private mSimStateTracker:Lcom/android/internal/telephony/SimStateTracker;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSupportSubsidyLock:Z

.field private mUiccCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/UiccCard;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$NEheX3Ond2Pg-bpD4y63X_CMG54(Lcom/android/internal/telephony/UniMultiSimSettingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->lambda$updateDefaults$1(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmNeedPopUpSimSettings(Lcom/android/internal/telephony/UniMultiSimSettingController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mNeedPopUpSimSettings:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmNeedPopUpSimSettings(Lcom/android/internal/telephony/UniMultiSimSettingController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mNeedPopUpSimSettings:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/internal/telephony/UniMultiSimSettingController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/android/internal/telephony/UniMultiSimSettingController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSubChangeNotificationIfNeeded(Lcom/android/internal/telephony/UniMultiSimSettingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->sendSubChangeNotificationIfNeeded(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mInit:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsPrefSetbefore:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUiccCards:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/UniMultiSimSettingController$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController$1;-><init>(Lcom/android/internal/telephony/UniMultiSimSettingController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSetupWizardCompleteObserver:Landroid/database/ContentObserver;

    invoke-static {p1}, Lcom/android/internal/telephony/SimStateTracker;->init(Landroid/content/Context;)Lcom/android/internal/telephony/SimStateTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSimStateTracker:Lcom/android/internal/telephony/SimStateTracker;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSetupWizardCompleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSimStateTracker:Lcom/android/internal/telephony/SimStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/SimStateTracker;->addOnSimStateChangedListener(Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;)V

    new-instance v1, Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x803000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/ClientIdController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/ClientIdController;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/UniMultiSimSettingController;->mClientIdController:Lcom/android/internal/telephony/ClientIdController;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSupportSubsidyLock:Z

    iget-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsMtnSimLock:Z

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getSimLockVersion()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSimLockVersion:I

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsOrangeSimLock:Z

    return-void
.end method

.method private autoSetDefaultSmsSubId()V
    .locals 8

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isRestrictPreference(I)Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getRestrictPreferencePhoneId(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DM restric targetSmsPhoneId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    if-le v3, v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultSmsSubId(I)V

    :cond_0
    const-string v3, "prefs.defaultxsubid.info"

    const-string v4, "1"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getDefaultXSubIdfromPreference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[autoSetDefaultVoiceSubId] preDefaultSmsSubId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isActiveSubIdforSetDefaultXSubId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "[autoSetDefaultSmsSubId] set preDefaultSmsSubId for sms"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultSmsSubId(I)V

    return-void

    :cond_2
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    const/4 v4, 0x1

    if-ne v2, v5, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_3

    return-void

    :cond_3
    const/4 v6, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    goto :goto_0

    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    :goto_0
    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v4, :cond_5

    const-string v4, "set Invalid subId for Sms"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultSmsSubId(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isAnySimStateLocked()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultSmsSubId(I)V

    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[autoSetDefaultPhones]: targetDefaultSmsSubId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private autoSetDefaultVoiceSubId()V
    .locals 8

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isRestrictPreference(I)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getRestrictPreferencePhoneId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DM restric targetVoicePhoneId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    if-le v2, v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultVoiceSubId(I)V

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v2

    nop

    const-string v3, "prefs.defaultxsubid.info"

    const-string v5, "0"

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getDefaultXSubIdfromPreference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[autoSetDefaultVoiceSubId] preDefaultVoiceSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isActiveSubIdforSetDefaultXSubId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "[autoSetDefaultVoiceSubId] set preDefaultVoiceSubId for voice"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultVoiceSubId(I)V

    return-void

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoSetDefaultVoiceSubId defaultVoiceSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    goto :goto_0

    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    :goto_0
    nop

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultVoiceSubId(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    const-string v6, "set Invalid subId for voice"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultVoiceSubId(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isAnySimStateLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "[autoSetDefaultVoiceSubId] reset defaultVoiceSubId because of locked state"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultVoiceSubId(I)V

    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[autoSetDefaultPhones]: targetDefaultVoiceSubId= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private forceSetPrimarySubForSubsidy(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSupportSubsidyLock:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getSubsidyLockStatus(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorCardForSubsidy(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getPreferredPrimaryCard()I

    move-result v0

    if-eq p1, v0, :cond_1

    const-string v0, "force set primary sub according to icc config for subsidylock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    return v2

    :cond_1
    return v1
.end method

.method private getActiveSubInfoList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionEnabled(I)Z

    move-result v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_3
    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAnotherActiveSubId(Ljava/util/List;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAnotherActiveSubId] activeSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getAnotherActiveSubId] simState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    if-eqz v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isSubscriptionPersoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getDefaultDataSubId()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v0

    return v0
.end method

.method private getDefaultXSubIdfromPreference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/android/internal/telephony/UniMultiSimSettingController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    check-cast v0, Lcom/android/internal/telephony/UniMultiSimSettingController;

    return-object v0
.end method

.method private getRestrictedPhoneId(I)I
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restrictedPhoneId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method private getSimStateforSubId(I)I
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSimStateTracker:Lcom/android/internal/telephony/SimStateTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SimStateTracker;->getSimState(I)I

    move-result v1

    return v1
.end method

.method private getSubIdUsingPhoneId(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/internal/telephony/MultiSimSettingController;
    .locals 4

    const-class v0, Lcom/android/internal/telephony/UniMultiSimSettingController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/UniMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/UniMultiSimSettingController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/UniMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    goto :goto_0

    :cond_0
    const-string v1, "UniMultiSimSettingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/UniMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/android/internal/telephony/UniMultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isActiveSubIdforSetDefaultXSubId(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isSimStateLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isAnySimStateLocked()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isSimStateLocked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isPoppingUpSimSettings(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "Device is not provisioned, pop up data dialog later."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mNeedPopUpSimSettings:Z

    :cond_1
    return-void
.end method

.method private isReadyToReevaluate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubInfoInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isCarrierConfigLoadedForAllSub()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSimStateLocked(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSimStateforSubId(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$getAnotherActiveSubId$0(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$setMaxRafAllowedNetworkTypes$6(Landroid/telephony/TelephonyManager;I)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->setAllowedNetworkTypes(J)Z

    return-void
.end method

.method static synthetic lambda$setRestrictedNetworkType$4(Landroid/telephony/TelephonyManager;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->setAllowedNetworkTypes(J)Z

    return-void
.end method

.method static synthetic lambda$setRestrictedNetworkTypeForSimLock$5(Landroid/telephony/TelephonyManager;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->setAllowedNetworkTypes(J)Z

    return-void
.end method

.method private synthetic lambda$updateDefaults$1(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultDataSubId(I)V

    return-void
.end method

.method static synthetic lambda$updatePrimarySubListAndGetChangeType$2(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$updatePrimarySubListAndGetChangeType$3(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniMultiSimSettingController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetNetworkTypesIfNeeded(ZI)V
    .locals 6

    if-eqz p1, :cond_1

    const-string v0, "reset network type"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getRestrictedNetworkTypeBitMask(I)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restrictedNetworkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setMaxRafAllowedNetworkTypes(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private sendSubChangeNotificationIfNeeded(I)V
    .locals 3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const-string v0, "[sendSubChangeNotificationIfNeeded] PRIMARY_SUB_SELECTED_BY_USER"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.telephony.action.PRIMARY_SUBSCRIPTION_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.sim.SimSelectNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.DEFAULT_SUBSCRIPTION_SELECT_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private setDefaultDataSubId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    return-void
.end method

.method private setDefaultSmsSubId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSubId(I)V

    return-void
.end method

.method private setDefaultVoiceSubId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    return-void
.end method

.method private setDefaultXSubIdtoPreference(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "voice"

    goto :goto_0

    :cond_0
    const-string v3, "sms"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SubId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to Preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private setMaxRafAllowedNetworkTypes(Landroid/content/Context;I)V
    .locals 7

    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypes()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowedNetworkTypes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRestrictedNetworkType] reset allowedRaf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",maxRaf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    int-to-long v5, v4

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/TelephonyManager;I)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private setRestrictedNetworkType()V
    .locals 14

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getRestrictedPhoneId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    const-wide/16 v5, 0x0

    const-string v7, "restrictedNetworkType = "

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getRestrictedNetworkTypeBitMask(I)J

    move-result-wide v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    cmp-long v4, v8, v5

    if-ltz v4, :cond_1

    new-instance v4, Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypes()J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[setRestrictedNetworkType]  allowedNetworkTypes = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",restrictedNetworkType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    cmp-long v12, v8, v10

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda4;

    invoke-direct {v13, v4, v8, v9}, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/TelephonyManager;J)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    :cond_0
    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setMaxRafAllowedNetworkTypes(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    if-eq v2, v1, :cond_3

    const-string v4, " no restrict card"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getRestrictedNetworkTypeBitMask(I)J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    cmp-long v5, v8, v5

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setMaxRafAllowedNetworkTypes(Landroid/content/Context;I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private setRestrictedNetworkTypeForSimLock()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v2

    iget-boolean v3, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsMtnSimLock:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSimLockVersion:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isWhiteListCard(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isWhiteListCard(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const/4 v7, -0x1

    iget-boolean v8, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsOrangeSimLock:Z

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getRestrictedNetTypePhoneId()I

    move-result v7

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setRestrictedNetworkTypeForSimLock: M* sim lock config = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", restricted network type? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; O* simlock config = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsOrangeSimLock:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", restricted network mode phoneId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_9

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v10, v8}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getRestrictedNetworkTypeBitMask(I)J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restrictedNetworkType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-ltz v12, :cond_5

    if-eqz v3, :cond_3

    if-nez v6, :cond_4

    :cond_3
    iget-boolean v12, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsOrangeSimLock:Z

    if-eqz v12, :cond_5

    :cond_4
    new-instance v12, Landroid/telephony/TelephonyManager;

    iget-object v13, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13, v9}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypes()J

    move-result-wide v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRestrictedNetworkTypeForSimLock]  allowedNetworkTypes = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ",restrictedNetworkType="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    cmp-long v4, v10, v13

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/Thread;

    new-instance v15, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda3;

    invoke-direct {v15, v12, v10, v11}, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/TelephonyManager;J)V

    invoke-direct {v4, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    iget-boolean v4, v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsOrangeSimLock:Z

    if-eqz v4, :cond_8

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    move v4, v5

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v0, v4, v8}, Lcom/android/internal/telephony/UniMultiSimSettingController;->resetNetworkTypesIfNeeded(ZI)V

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method private updateDefaultValue(Ljava/util/List;IILcom/android/internal/telephony/UniMultiSimSettingController$UpdateDefaultAction;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/android/internal/telephony/UniMultiSimSettingController$UpdateDefaultAction;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getDefaultDataSubId()I

    move-result v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x8030028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSupportSubsidyLock:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    if-ne p2, v3, :cond_2

    const-string v2, "in SetupWizard mode,default data sub is valid,not set again"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x6

    if-eq p2, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsIccChanged:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->forceSetPrimarySubForSubsidy(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "no need to set defaultdatasubid"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eq v0, p3, :cond_4

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    if-eq p2, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne p2, v3, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDefaultValue: subId] from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-interface {p4, p3}, Lcom/android/internal/telephony/UniMultiSimSettingController$UpdateDefaultAction;->update(I)V

    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getDefaultDataSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ProxyController;->getRadioAccessFamily(I)I

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v6

    if-eq v5, v6, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reset default data to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-interface {p4, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController$UpdateDefaultAction;->update(I)V

    :cond_7
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    return v5
.end method

.method private updatePrimarySubListAndGetChangeType(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-boolean v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mInit:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mInit:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsIccChanged:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isNeedPopupPrimaryCardSettingPrompt()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x6

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updatePrimarySubListAndGetChangeType] defaultDataPhoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    return v3

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->forceSetPrimarySubForSubsidy(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v2, "[updatePrimarySubListAndGetChangeType] ignore the selected data sub for subsidylock"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    return v3

    :cond_5
    return v2
.end method


# virtual methods
.method protected disableDataForNonDefaultNonOpportunisticSubscriptions()V
    .locals 10

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    if-eq v8, v0, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->isUserDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/android/internal/telephony/UniMultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting data to false on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v3, v3, v9}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataEnabled(IZLjava/lang/String;)V

    const-string v8, "gsm.data.setenabled"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onAllSimDetected(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllSimDetected. isIccChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsIccChanged:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsMtnSimLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mSimLockVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->updateDefaults()V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setRestrictedNetworkTypeForSimLock()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsOrangeSimLock:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setRestrictedNetworkTypeForSimLock()V

    return-void

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mClientIdController:Lcom/android/internal/telephony/ClientIdController;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSimStateforSubId(I)I

    move-result v0

    const-string v1, "UNKNOWN"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LOADED"

    goto :goto_0

    :sswitch_1
    const-string v1, "ABSENT"

    nop

    :goto_0
    sget-object v2, Lcom/android/internal/telephony/UniMultiSimSettingController;->mClientIdController:Lcom/android/internal/telephony/ClientIdController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientIdController;->updateInternalIccState(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->reEvaluateAll()V

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public onSimHotSwaped(I)V
    .locals 1

    const-string v0, "onSimHotSwaped."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsIccChanged:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->reEvaluateAll()V

    return-void
.end method

.method protected updateDefaults()V
    .locals 12

    const-string v0, "updateDefaults"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsPrefSetbefore:Z

    :cond_1
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-boolean v1, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsPrefSetbefore:Z

    if-nez v1, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    const-string v2, "0"

    const-string v5, "prefs.defaultxsubid.info"

    invoke-direct {p0, v5, v2, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultXSubIdtoPreference(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v2

    const-string v6, "1"

    invoke-direct {p0, v5, v6, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultXSubIdtoPreference(Ljava/lang/String;Ljava/lang/String;I)V

    iput-boolean v4, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsPrefSetbefore:Z

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultVoiceSubId(I)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultSmsSubId(I)V

    const-string v1, "[updateDefaultValues] No active sub. Setting default to INVALID sub."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->updatePrimarySubListAndGetChangeType(Ljava/util/List;)I

    move-result v1

    iget-object v5, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateDefaultValues] change: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    if-ne v5, v4, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-static {v6}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDefaultValues] to only primary sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultDataSubId(I)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultVoiceSubId(I)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultSmsSubId(I)V

    return-void

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    iput-object v6, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUiccCards:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUiccCards:Ljava/util/List;

    if-eqz v9, :cond_9

    if-eqz v8, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v7

    if-le v9, v10, :cond_9

    const-string v2, "[updateDefaultValues] there are cards not ready to set default cards, so return."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isPoppingUpSimSettings(ILjava/util/List;)V

    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getAnotherActiveSubId(Ljava/util/List;Ljava/util/List;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultDataSubId(I)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultVoiceSubId(I)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setDefaultSmsSubId(I)V

    :cond_8
    return-void

    :cond_9
    iget-boolean v9, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsIccChanged:Z

    if-eqz v9, :cond_a

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->autoSetDefaultVoiceSubId()V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->autoSetDefaultSmsSubId()V

    :cond_a
    if-nez v1, :cond_b

    iput-boolean v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mIsIccChanged:Z

    return-void

    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getPreferredPrimaryCard()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[updateDefaultValues] primarySubId ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v9, v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isRestrictPreference(I)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v9, v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getRestrictPreferencePhoneId(I)I

    move-result v4

    if-le v4, v3, :cond_c

    const-string v3, "[onSetPrimaryCardPrepared] DM need restrict data subId"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniMultiSimSettingController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->getSubIdUsingPhoneId(I)I

    move-result v2

    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/UniMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    new-instance v4, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/UniMultiSimSettingController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/UniMultiSimSettingController;)V

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/android/internal/telephony/UniMultiSimSettingController;->updateDefaultValue(Ljava/util/List;IILcom/android/internal/telephony/UniMultiSimSettingController$UpdateDefaultAction;)Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x8030031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->setRestrictedNetworkType()V

    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isDeviceProvisioned()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->sendSubChangeNotificationIfNeeded(I)V

    goto :goto_1

    :cond_e
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/UniMultiSimSettingController;->isPoppingUpSimSettings(ILjava/util/List;)V

    :goto_1
    return-void
.end method
