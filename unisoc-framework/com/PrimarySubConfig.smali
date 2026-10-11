.class public Lcom/android/internal/telephony/PrimarySubConfig;
.super Ljava/lang/Object;
.source "PrimarySubConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PrimarySubConfig"

.field private static blacklist mInstance:Lcom/android/internal/telephony/PrimarySubConfig;


# instance fields
.field private blacklist mAllConfigInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

.field private blacklist mPhoneCount:I

.field private blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIccConfigs(Lcom/android/internal/telephony/PrimarySubConfig;)[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/PrimarySubConfig;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRestrictedPhoneId(Lcom/android/internal/telephony/PrimarySubConfig;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PrimarySubConfig;->getRestrictedPhoneId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/PrimarySubConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PrimarySubConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetNetworkTypeRestrictEnable(Lcom/android/internal/telephony/PrimarySubConfig;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PrimarySubConfig;->setNetworkTypeRestrictEnable(ZI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mAllConfigInfos:Ljava/util/List;

    iput-object p1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mPhoneCount:I

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    iget v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mPhoneCount:I

    new-array v0, v0, [Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    invoke-direct {p0}, Lcom/android/internal/telephony/PrimarySubConfig;->loadPrimarySubConfigInfo()V

    return-void
.end method

.method private blacklist getFixedSlot()I
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/PrimarySubConfig;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/PrimarySubConfig;->mInstance:Lcom/android/internal/telephony/PrimarySubConfig;

    return-object v0
.end method

.method private blacklist getPreferredPrimaryCard(Z)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mPhoneCount:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmPriority(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmPriority(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->isSubscriptionEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eq v1, v0, :cond_3

    const-string v3, "the subinfo is disabled or opportunistic"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PrimarySubConfig;->logd(Ljava/lang/String;)V

    move v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private blacklist getRestrictedPhoneId(I)I
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

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

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/PrimarySubConfig;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/PrimarySubConfig;->mInstance:Lcom/android/internal/telephony/PrimarySubConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PrimarySubConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/PrimarySubConfig;->mInstance:Lcom/android/internal/telephony/PrimarySubConfig;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PrimarySubConfig;->mInstance:Lcom/android/internal/telephony/PrimarySubConfig;

    return-object v0
.end method

.method private static blacklist isFixedSlot()Z
    .locals 2

    const-string v0, "ro.vendor.radio.fixed_slot"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist loadPrimarySubConfigInfo()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mContext:Landroid/content/Context;

    const-string v1, "com.unisoc.phone"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "primary_sub_conf"

    const-string v3, "xml"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    const-string v4, "iccConfigs"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iccConfig"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mAllConfigInfos:Ljava/util/List;

    new-instance v6, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    invoke-direct {v6, p0, v3}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;-><init>(Lcom/android/internal/telephony/PrimarySubConfig;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in primary_sub_conf parser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PrimarySubConfig;->logw(Ljava/lang/String;)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPrimarySubConfigInfo done: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mAllConfigInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PrimarySubConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PrimarySubConfig"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PrimarySubConfig"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist setNetworkTypeRestrictEnable(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restrict_network_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public blacklist getNetworkTypeBitMask(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmNetwork(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide v1

    return-wide v1

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getPreferredPrimaryCard()I
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v3

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getSimLockVersion()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    if-eqz v3, :cond_3

    :cond_1
    const-string v4, "getPreferredPrimaryCard for operator"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PrimarySubConfig;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/simlock/OpSimLockController;->getInstance()Lcom/android/internal/telephony/simlock/OpSimLockController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/simlock/OpSimLockController;->getOpPreferredPrimaryCard()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PrimarySubConfig;->getPreferredPrimaryCard(Z)I

    move-result v2

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PrimarySubConfig;->getPreferredPrimaryCard(Z)I

    move-result v0

    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/PrimarySubConfig;->isFixedSlot()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/PrimarySubConfig;->getFixedSlot()I

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    return v2
.end method

.method public blacklist getRestrictedNetworkTypeBitMask(I)J
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v3

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getSimLockVersion()I

    move-result v4

    if-eq v4, v2, :cond_1

    :cond_0
    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/simlock/OpSimLockController;->getInstance()Lcom/android/internal/telephony/simlock/OpSimLockController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;->restrictedNetworkTypeNeeded(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;->getRestrictedNetworkType(I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get simlock restricted networktype "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PrimarySubConfig;->logd(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/internal/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide v6

    return-wide v6

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v2, v2, p1

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmIsNetworkRestricted(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmRestrictedNetwork(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide v4

    return-wide v4

    :cond_3
    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method public blacklist getTag(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmTag(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public blacklist isNeedPopupPrimaryCardSettingPrompt()Z
    .locals 9

    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getSimLockVersion()I

    move-result v0

    if-ne v0, v2, :cond_4

    const-string v0, "isNeedPopupPrimaryCardSettingPrompt: mtn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PrimarySubConfig;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/simlock/OpSimLockController;->getInstance()Lcom/android/internal/telephony/simlock/OpSimLockController;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mPhoneCount:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/simlock/OpSimLockController;->isWhiteListCard(I)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/PrimarySubConfig;->getPreferredPrimaryCard()I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v4, v4, v0

    if-nez v4, :cond_5

    return v3

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    iget v7, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mPhoneCount:I

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v7, v7, v6

    if-eqz v7, :cond_6

    invoke-static {v7}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmPriority(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v8, v8, v0

    invoke-static {v8}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmPriority(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I

    move-result v8

    if-ne v7, v8, :cond_6

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v7, v7, v6

    invoke-static {v7}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmUserPrompt(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)Z

    move-result v7

    or-int/2addr v5, v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    if-lt v4, v2, :cond_8

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    return v1
.end method

.method public blacklist update()V
    .locals 7

    iget v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mPhoneCount:I

    new-array v0, v0, [Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mPhoneCount:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mAllConfigInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    new-instance v4, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;-><init>(Lcom/android/internal/telephony/PrimarySubConfig;Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)V

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->match(Landroid/telephony/SubscriptionInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v5, v5, v0

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmMatchedScore(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I

    move-result v5

    invoke-static {v4}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->-$$Nest$fgetmMatchedScore(Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;)I

    move-result v6

    if-ge v5, v6, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aput-object v4, v5, v0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mPhoneCount:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/PrimarySubConfig;->setNetworkTypeRestrictEnable(ZI)V

    iget-object v1, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;->updateRestrictedNetwork()V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update matched config["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PrimarySubConfig;->mIccConfigs:[Lcom/android/internal/telephony/PrimarySubConfig$PrimarySubConfigInfo;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PrimarySubConfig;->logd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method
