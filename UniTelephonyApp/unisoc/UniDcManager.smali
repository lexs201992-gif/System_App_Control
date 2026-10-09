.class public final Lcom/unisoc/phone/UniDcManager;
.super Landroid/os/Handler;
.source "UniDcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/UniDcManager$DcPhoneStateListener;
    }
.end annotation


# static fields
.field private static mApnSetting:Landroid/telephony/data/ApnSetting;

.field private static mApnTypes:I

.field private static sInstance:Lcom/unisoc/phone/UniDcManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPhoneId:I

.field private mPhoneStateListeners:[Lcom/unisoc/phone/UniDcManager$DcPhoneStateListener;

.field private final mPhoneSubscriptions:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecoveryAction:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/unisoc/phone/UniDcManager;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/unisoc/phone/UniDcManager;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneSubscriptions(Lcom/unisoc/phone/UniDcManager;)[I
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneSubscriptions:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecoveryAction(Lcom/unisoc/phone/UniDcManager;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/UniDcManager;->mRecoveryAction:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPhoneId(Lcom/unisoc/phone/UniDcManager;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRecoveryAction(Lcom/unisoc/phone/UniDcManager;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/phone/UniDcManager;->mRecoveryAction:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mlistenPhoneState(Lcom/unisoc/phone/UniDcManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniDcManager;->listenPhoneState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/unisoc/phone/UniDcManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniDcManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendErrReport(Lcom/unisoc/phone/UniDcManager;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unisoc/phone/UniDcManager;->sendErrReport(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmApnSetting()Landroid/telephony/data/ApnSetting;
    .locals 1

    sget-object v0, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmApnSetting(Landroid/telephony/data/ApnSetting;)V
    .locals 0

    sput-object p0, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmApnTypes(I)V
    .locals 0

    sput p0, Lcom/unisoc/phone/UniDcManager;->mApnTypes:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/unisoc/phone/UniDcManager$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniDcManager$1;-><init>(Lcom/unisoc/phone/UniDcManager;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniDcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/unisoc/phone/UniDcManager$2;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniDcManager$2;-><init>(Lcom/unisoc/phone/UniDcManager;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniDcManager;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const-string v0, "UniDcManager.constructor"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniDcManager;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisoc/phone/UniDcManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DATA_STALL_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/phone/UniDcManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisoc/phone/UniDcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneCount:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneSubscriptions:[I

    new-array v0, v0, [Lcom/unisoc/phone/UniDcManager$DcPhoneStateListener;

    iput-object v0, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneStateListeners:[Lcom/unisoc/phone/UniDcManager$DcPhoneStateListener;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneStateListeners:[Lcom/unisoc/phone/UniDcManager$DcPhoneStateListener;

    new-instance v2, Lcom/unisoc/phone/UniDcManager$DcPhoneStateListener;

    invoke-direct {v2, p0}, Lcom/unisoc/phone/UniDcManager$DcPhoneStateListener;-><init>(Lcom/unisoc/phone/UniDcManager;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iget-object p0, p0, Lcom/unisoc/phone/UniDcManager;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method private getStringProtocol(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringProtocol index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniDcManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "invalid Protocol type"

    return-object p0

    :cond_0
    const-string p0, "IPV4V6"

    return-object p0

    :cond_1
    const-string p0, "IPV6"

    return-object p0

    :cond_2
    const-string p0, "IPV4"

    return-object p0
.end method

.method public static init(Landroid/content/Context;)Lcom/unisoc/phone/UniDcManager;
    .locals 1

    sget-object v0, Lcom/unisoc/phone/UniDcManager;->sInstance:Lcom/unisoc/phone/UniDcManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisoc/phone/UniDcManager;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniDcManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisoc/phone/UniDcManager;->sInstance:Lcom/unisoc/phone/UniDcManager;

    :cond_0
    sget-object p0, Lcom/unisoc/phone/UniDcManager;->sInstance:Lcom/unisoc/phone/UniDcManager;

    return-object p0
.end method

.method private listenPhoneState(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneSubscriptions:[I

    aget v0, v0, p1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneCallStateListener: listen subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneSubscriptions:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniDcManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/UniDcManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneSubscriptions:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneStateListeners:[Lcom/unisoc/phone/UniDcManager$DcPhoneStateListener;

    aget-object p0, p0, p1

    const/16 p1, 0x1000

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "UniDcManager"

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendErrReport(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const-string p4, "sendErrReport"

    invoke-direct {p0, p4}, Lcom/unisoc/phone/UniDcManager;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance p4, Landroid/content/Intent;

    const-string v0, "com.sprd.intent.action.COMMLOG_REPORTED"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.sprd.commlog"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "FaultId"

    const/4 v1, 0x5

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "SceneId"

    const/16 v1, 0x501

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "RecoveryAction"

    invoke-virtual {p4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p3, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "sendErrReport : "

    if-eqz p3, :cond_0

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/unisoc/phone/UniDcManager;->log(Ljava/lang/String;)V

    const-string p3, "Type"

    sget v1, Lcom/unisoc/phone/UniDcManager;->mApnTypes:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Carrier"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Apn"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Proxy"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Port"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "Mmsc"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "MmsProxy"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "User"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "AuthType"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "Numeric"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Protocol"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisoc/phone/UniDcManager;->getStringProtocol(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "RoamingProtocol"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisoc/phone/UniDcManager;->getStringProtocol(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Mtu"

    sget-object v1, Lcom/unisoc/phone/UniDcManager;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v1

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "State"

    const v1, 0xffff

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string p3, "SimIndex"

    iget v1, p0, Lcom/unisoc/phone/UniDcManager;->mPhoneId:I

    invoke-virtual {p4, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/unisoc/phone/UniDcManager;->log(Ljava/lang/String;)V

    const-string p3, "CpInfo"

    invoke-virtual {p4, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1, p4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniDcManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
