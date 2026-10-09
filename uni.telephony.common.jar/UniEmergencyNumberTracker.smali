.class public Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;
.super Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
.source "UniEmergencyNumberTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ECCLIST_NO_CARD:Ljava/lang/String; = "no_card"

.field private static final ECCLIST_WITH_CARD:Ljava/lang/String; = "with_card"

.field private static final REMOVE_RADIO_ECCLIST_FROM_NETWORK:I = 0x0

.field private static final REMOVE_RADIO_ECCLIST_FROM_NETWORK_AND_SIM:I = 0x2

.field private static final REMOVE_RADIO_ECCLIST_FROM_SIM:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UNI_EMERGENCY_NUMBER_DB_ASSETS_FILE:Ljava/lang/String; = "unieccdata"


# instance fields
.field private hasMncFlag:Z

.field mAssetsDatabaseVersion:I

.field private mCountryIsoConfig:Lcom/android/internal/telephony/emergency/CountryIsoConfig;

.field private mRadioEccListNotFromNetwork:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioEccListNotFromNetworkAndSIM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioEccListNotFromSIM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUniIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;)Lcom/android/unisoc/telephony/RadioInteractor;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRadioInteractor(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;Lcom/android/unisoc/telephony/RadioInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeDatabaseSimStateChange(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->initializeDatabaseSimStateChange(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedInitDatabase(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;IILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->needInitDatabase(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveRadioEccListBySource(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->removeRadioEccListBySource(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->TAG:Ljava/lang/String;

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->hasMncFlag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mAssetsDatabaseVersion:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioEccListNotFromNetwork:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioEccListNotFromSIM:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioEccListNotFromNetworkAndSIM:Ljava/util/List;

    new-instance v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$1;-><init>(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mUniIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->getTelephonyManager()V

    return-void
.end method

.method private addRadiointeractor(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.unisoc.telephony.server"

    const-string v2, "com.android.unisoc.telephony.server.RadioInteractorService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$2;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$2;-><init>(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private areSameEmergencyNumbersWithDiffCategory(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v2

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    invoke-virtual {p2, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v2

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private getCountryIsoBySimOperatorNumeric()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCountryIsoBySimOperatorNumeric: get country from operator numeric. numeric = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    return-object v2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMnc(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->getTelephonyManager()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private getTelephonyManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mUniIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/internal/telephony/emergency/CountryIsoConfig;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/emergency/CountryIsoConfig;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIsoConfig:Lcom/android/internal/telephony/emergency/CountryIsoConfig;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->addRadiointeractor(Landroid/content/Context;)V

    return-void
.end method

.method private initializeDatabaseSimStateChange(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->updateCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeDatabaseSimStateChange: countryIso = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V

    return-void
.end method

.method private isAirplaneModeEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method private isMatchRoamingPlmn()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x8010033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMatchRoamingPlmn: networkNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isSimPlugState(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "ABSENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "LOCKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "LOADED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->removeRadioEccListBySource(I)V

    :pswitch_1
    return v3

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-static {v0, v4}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x803002d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x803002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignoreEmergencyNumFromNetwork = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ignoreEmergencyNumFromSim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->removeRadioEccListBySource(I)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->removeRadioEccListBySource(I)V

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->removeRadioEccListBySource(I)V

    :cond_3
    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_2
        -0x79d6d8f6 -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isValidEccInfo(Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;->cardFlag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->hasMncFlag:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;->mnc:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->getMnc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->hasMncFlag:Z

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const-string v4, "no_card"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v3, v2, :cond_2

    return v2

    :cond_2
    const-string v4, "with_card"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v3, v2, :cond_3

    return v2

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private mergeAssetAndOtaEmergencyNumberList()V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "mergeAssetAndOtaEmergencyNumberList: "

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCurrentDatabaseVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mAssetsDatabaseVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCurrentDatabaseVersion:I

    iget v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mAssetsDatabaseVersion:I

    if-le v0, v1, :cond_8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mergeOtaAndAssetNumber(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asset ecc list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ota ecc list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "database ecc list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeAssetAndOtaEmergencyNumberList: mEmergencyNumberListFromAssetDatabase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_9
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmergencyNumberListFromDatabase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private mergeCategoryForSameEmergencyNumber(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->areSameEmergencyNumbersWithDiffCategory(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v5

    or-int/2addr v5, v1

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v7

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private mergeOtaAndAssetNumber(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;
    .locals 9

    new-instance v8, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v4

    or-int/2addr v4, v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v6

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    move v7, v0

    :goto_0
    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object v8
.end method

.method private mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mergeSameNumbersInEmergencyNumberList remove duplicate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v3, v2, 0x1

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/emergency/EmergencyNumber;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->areSameEmergencyNumbersWithDiffCategory(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result v4

    const-string v5, " vs "

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mergeSameNumbersInEmergencyNumberList Found unexpected duplicate numbers with differenct category: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/emergency/EmergencyNumber;

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mergeCategoryForSameEmergencyNumber(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    nop

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/emergency/EmergencyNumber;

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/telephony/emergency/EmergencyNumber;->areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mergeSameNumbersInEmergencyNumberList Found unexpected duplicate numbers: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/emergency/EmergencyNumber;

    invoke-static {v4, v5}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    return-object v0
.end method

.method private needInitDatabase(IILjava/lang/String;)Z
    .locals 5

    if-ne p1, p2, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->isSimPlugState(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->getTelephonyManager()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " needInitDatabase: mTelephonyManager.hasIccCard(phoneId) = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const-string v0, "LOADED"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_3
    const-string v0, "ABSENT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " needInitDatabase: getActiveSubscriptionInfoCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    return v1
.end method

.method private needLoadDataBaseEccList()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->getTelephonyManager()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " needLoadDataBaseEccList: phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " needLoadDataBaseEccList: getActiveSubscriptionInfoCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2
    return v1

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private removeRadioEccListBySource(I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioEccListNotFromNetworkAndSIM:Ljava/util/List;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioEccListNotFromSIM:Ljava/util/List;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioEccListNotFromNetwork:Ljava/util/List;

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeRadioEccListBySource: needRemove = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", replaceRadioEccList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEmergencyNumberListFromRadio ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->updateRadioEmergencyNumberListAndNotify(Ljava/util/List;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCountryIso(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "ABSENT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "LOCKED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "LOADED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/LocaleTracker;->getLastKnownCountryIso()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCountryIso: getLastCountryIso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->getCountryIsoBySimOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCountryIso: getCountryIsoBySimOperatorNumeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIsoConfig:Lcom/android/internal/telephony/emergency/CountryIsoConfig;

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/emergency/CountryIsoConfig;->getIccId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIsoConfig:Lcom/android/internal/telephony/emergency/CountryIsoConfig;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/emergency/CountryIsoConfig;->getCountryIsoByIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCountryIso: getCountryIsoByIccId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    nop

    :cond_2
    :goto_2
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_2
        -0x79d6d8f6 -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->needLoadDataBaseEccList()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    iget-object v0, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->getMnc(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v10, "com.unisoc.phone"

    const/4 v11, 0x3

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remouteContext is: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_2

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    throw v0

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "unieccdata"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->readInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/uniecc/nano/UniProtobufEccData$AllInfo;->parseFrom([B)Lcom/android/phone/uniecc/nano/UniProtobufEccData$AllInfo;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v0

    :try_start_4
    iget v0, v4, Lcom/android/phone/uniecc/nano/UniProtobufEccData$AllInfo;->revision:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v5, v0

    :try_start_5
    iput v5, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mAssetsDatabaseVersion:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " asset emergency database is loaded. Ver: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " Phone Id: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/android/phone/uniecc/nano/UniProtobufEccData$AllInfo;->countries:[Lcom/android/phone/uniecc/nano/UniProtobufEccData$CountryInfo;

    array-length v10, v0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_8

    aget-object v13, v0, v12

    iget-object v14, v13, Lcom/android/phone/uniecc/nano/UniProtobufEccData$CountryInfo;->isoCode:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v13, Lcom/android/phone/uniecc/nano/UniProtobufEccData$CountryInfo;->eccs:[Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;

    array-length v15, v14

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_6

    aget-object v16, v14, v11

    move-object/from16 v17, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->convertEmergencyNumberFromUniEccInfo(Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v17
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v18, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v18

    if-nez v4, :cond_3

    move/from16 v18, v5

    goto :goto_4

    :cond_3
    move/from16 v18, v5

    :try_start_6
    iget-object v5, v0, Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object/from16 v19, v5

    iget-object v5, v0, Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    goto :goto_3

    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    goto :goto_5

    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    goto :goto_2

    :cond_8
    move-object/from16 v17, v4

    move/from16 v18, v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    iget-boolean v0, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->hasMncFlag:Z

    if-eqz v0, :cond_b

    :cond_9
    iget-boolean v0, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->hasMncFlag:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->hasMncFlag:Z

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " cacheEmergencyDatabaseByCountry: updatedAssetEmergencyNumberListWithMnc = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    move-object v0, v7

    move-object v6, v0

    :cond_b
    invoke-static {v6}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    iput-object v6, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_6
    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :goto_7
    move-object/from16 v4, v17

    move/from16 v5, v18

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v4, v17

    move/from16 v5, v18

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object v9, v0

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v17, v4

    move-object v9, v0

    goto/16 :goto_c

    :catch_8
    move-exception v0

    move-object/from16 v17, v4

    :goto_8
    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cache emergency database failure: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_c

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    throw v0

    :cond_c
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->cacheOtaEmergencyNumberDatabase()I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_d

    if-ne v5, v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No database available. Phone Id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    :cond_d
    if-le v5, v0, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using Asset Emergency database. Version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    iput v5, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCurrentDatabaseVersion:I

    iput-object v6, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    goto :goto_b

    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using Ota Emergency database. Version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    :goto_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cacheEmergencyDatabaseByCountry mEmergencyNumberListFromDatabase: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mEmergencyNumberListFromAssetDatabase: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromAssetDatabase:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void

    :goto_c
    if-eqz v3, :cond_f

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    move-exception v0

    goto :goto_d

    :catch_c
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    throw v0

    :cond_f
    :goto_d
    throw v9
.end method

.method protected convertEmergencyNumberFromUniEccInfo(Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .locals 11

    iget-object v0, p1, Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->isValidEccInfo(Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;->types:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v9, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget v1, v2, v4

    invoke-static {v1, v9}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->getBitmask(II)I

    move-result v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v10, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v4, p1, Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;->mnc:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x10

    iget v8, p1, Lcom/android/phone/uniecc/nano/UniProtobufEccData$EccInfo;->routing:I

    move-object v1, v10

    move-object v2, v0

    move-object v3, p2

    move v5, v9

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object v10

    :cond_2
    :goto_1
    const-string v1, "convertEmergencyNumberFromUniEccInfo: return null!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .locals 11

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "getEmergencyNumber: set emergency routing"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->isMatchRoamingPlmn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "getEmergencyNumber: set normal routing for ctcc roaming"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const/4 v0, 0x2

    :cond_2
    new-instance v10, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v6

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v8

    move-object v2, v10

    move v9, v0

    invoke-direct/range {v2 .. v9}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object v10

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIccId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mCountryIsoConfig:Lcom/android/internal/telephony/emergency/CountryIsoConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/emergency/CountryIsoConfig;->getCountryIsoByIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIccId: getCountryIsoByIccId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " countryIso "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setSimOperatorNumeric(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimOperatorNumeric: Can\'t get country from operator numeric. mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSimOperatorNumeric: countryIso "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V

    return-void
.end method

.method protected updateEmergencyNumberList()V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mergeAssetAndOtaEmergencyNumberList()V

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmergencyNumberList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    sget-boolean v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->DBG:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEmergencyNumberList after merge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected updateRadioEmergencyNumberListAndNotify(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRadioEmergencyNumberListAndNotify(): receiving "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v7}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v8

    const/4 v15, 0x1

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v15, :cond_1

    const-string v9, ""

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v18, v6

    move v6, v15

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v14, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v7}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v13

    invoke-virtual {v7}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v16

    const/16 v17, 0x2

    move-object v9, v14

    move-object v2, v14

    move-object v14, v8

    move-object/from16 v18, v6

    move v6, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move-object/from16 v18, v6

    move v6, v15

    goto :goto_2

    :cond_3
    move-object/from16 v18, v6

    move v6, v15

    :goto_2
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v7, v6}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v7, v6}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v7, v2}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v2, p1

    move-object/from16 v6, v18

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->writeUpdatedEmergencyNumberListMetrics(Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    iput-object v3, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioEccListNotFromNetwork:Ljava/util/List;

    iput-object v4, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioEccListNotFromSIM:Ljava/util/List;

    iput-object v5, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mRadioEccListNotFromNetworkAndSIM:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEmergencyNumberListFromRadio "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->DBG:Z

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRadioEmergencyNumberList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->updateEmergencyNumberList()V

    sget-boolean v2, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->DBG:Z

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRadioEmergencyNumberListAndNotify:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->notifyEmergencyNumberList()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRadioEmergencyNumberListAndNotify() Phone already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EmergencyNumberList not notified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method
