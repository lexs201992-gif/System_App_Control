.class public Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;
.super Ljava/lang/Object;
.source "UniRoamingBrokerController.java"


# static fields
.field private static final blacklist EMPTY_STRING:Ljava/lang/String; = ""

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RoamingBroker"

.field private static final blacklist ROAMINGBROKER_LSIT_PATH:Ljava/lang/String; = "etc/roamingbroker_file.xml"


# instance fields
.field private blacklist mIccIds:[Ljava/lang/String;

.field private blacklist mMccMncs:[Ljava/lang/String;

.field private blacklist mPhoneId:I

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRoamingBrokerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetAllValues(Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->resetAllValues()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mRoamingBrokerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController$1;-><init>(Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mPhoneId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->resetAllValues()V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->loadRoamingBrokerList()V

    return-void
.end method

.method private blacklist isMccMncMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oriValue is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newValue is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", values is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->log(Ljava/lang/String;)V

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    invoke-static {p3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_2
    return v1
.end method

.method private blacklist loadRoamingBrokerList()V
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/roamingbroker_file.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v3, "roamingBrokerList"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "allowRoamingBroker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    nop

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRoamingBrokerMap= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mRoamingBrokerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_1

    :cond_1
    const-string v4, "original_mccmnc"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "roaming_mccmnc"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mRoamingBrokerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in spn-conf parser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->log(Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private final blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RoamingBroker"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist resetAllValues()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mIccIds:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mMccMncs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getOriginalValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mMccMncs:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getRoamingBrokerMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mRoamingBrokerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getStateforBroker()Z
    .locals 3

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mIccIds:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mMccMncs:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->isReadytoSetMccMnc([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public blacklist isReadytoSetMccMnc([Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isReadytoSetMccMnc] subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->log(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isReadytoSetMccMnc] MccMncMapping is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mRoamingBrokerMap:Ljava/util/HashMap;

    aget-object v4, p2, v0

    aget-object v5, p2, v1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->isMccMncMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mRoamingBrokerMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    aget-object v3, p2, v0

    aget-object v4, p2, v1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->isMccMncMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v1, "[isReadytoSetMccMnc] service state is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->log(Ljava/lang/String;)V

    return v0

    :cond_3
    sget-boolean v4, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isReadytoSetMccMnc] mIccIds[0] = , mIccIds[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMccMncs[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMccMncs[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->log(Ljava/lang/String;)V

    :cond_4
    aget-object v4, p1, v1

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    aget-object v4, p2, v1

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v0
.end method

.method public blacklist setMccMncs()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mMccMncs:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist updateIccIds(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mIccIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mIccIds:[Ljava/lang/String;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mIccIds:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    :goto_0
    return-void
.end method

.method public blacklist updateMccMncs(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mMccMncs:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mMccMncs:[Ljava/lang/String;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->mMccMncs:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    :goto_0
    return-void
.end method
