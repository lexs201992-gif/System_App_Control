.class public Lcom/android/stk/StkMenuConfig;
.super Ljava/lang/Object;
.source "StkMenuConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkMenuConfig$Config;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final NO_CONFIG:Lcom/android/stk/StkMenuConfig$Config;

.field private static sInstance:Lcom/android/stk/StkMenuConfig;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/stk/StkMenuConfig$Config;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/stk/StkMenuConfig;->DBG:Z

    new-instance v0, Lcom/android/stk/StkMenuConfig$Config;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/android/stk/StkMenuConfig$Config;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/stk/StkMenuConfig;->NO_CONFIG:Lcom/android/stk/StkMenuConfig$Config;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/stk/StkMenuConfig;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    return-void
.end method

.method private findConfig(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/stk/StkMenuConfig;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    sget-object v0, Lcom/android/stk/StkMenuConfig;->NO_CONFIG:Lcom/android/stk/StkMenuConfig$Config;

    aput-object v0, p0, p1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/stk/StkMenuConfig;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    aget-object v3, v3, p1

    const-string v4, "StkMenuConfig"

    if-eqz v3, :cond_4

    iget v5, v3, Lcom/android/stk/StkMenuConfig$Config;->mcc:I

    if-ne v5, v2, :cond_4

    iget v3, v3, Lcom/android/stk/StkMenuConfig$Config;->mnc:I

    if-ne v3, v0, :cond_4

    sget-boolean p0, Lcom/android/stk/StkMenuConfig;->DBG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Return the cached config, slot id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    sget-boolean v3, Lcom/android/stk/StkMenuConfig;->DBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Find config and create the cached config, slot id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/stk/StkMenuConfig;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/stk/StkMenuConfig$Config;

    iget v5, v4, Lcom/android/stk/StkMenuConfig$Config;->mcc:I

    if-ne v5, v2, :cond_6

    iget v5, v4, Lcom/android/stk/StkMenuConfig$Config;->mnc:I

    if-ne v5, v0, :cond_6

    iget-object p0, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    aput-object v4, p0, p1

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    new-instance v3, Lcom/android/stk/StkMenuConfig$Config;

    invoke-direct {v3, v2, v0, v1, v1}, Lcom/android/stk/StkMenuConfig$Config;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, p0, p1

    return-void

    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    sget-object v0, Lcom/android/stk/StkMenuConfig;->NO_CONFIG:Lcom/android/stk/StkMenuConfig$Config;

    aput-object v0, p0, p1

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/stk/StkMenuConfig;
    .locals 2

    sget-object v0, Lcom/android/stk/StkMenuConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/stk/StkMenuConfig;->sInstance:Lcom/android/stk/StkMenuConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/stk/StkMenuConfig;

    invoke-direct {v1}, Lcom/android/stk/StkMenuConfig;-><init>()V

    sput-object v1, Lcom/android/stk/StkMenuConfig;->sInstance:Lcom/android/stk/StkMenuConfig;

    invoke-direct {v1, p0}, Lcom/android/stk/StkMenuConfig;->initialize(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/android/stk/StkMenuConfig;->sInstance:Lcom/android/stk/StkMenuConfig;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/android/stk/StkMenuConfig;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/stk/StkMenuConfig;->mArray:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/android/stk/StkMenuConfig;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p1

    new-array p1, p1, [Lcom/android/stk/StkMenuConfig$Config;

    iput-object p1, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    iget-object p1, p0, Lcom/android/stk/StkMenuConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f110000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_0
    const-string v0, "operators"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v0, "operator"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :cond_1
    :try_start_1
    const-string v0, "mcc"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string v3, "mnc"

    invoke-interface {p1, v2, v3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v1, :cond_0

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "label"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "icon"

    invoke-interface {p1, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/stk/StkMenuConfig$Config;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/android/stk/StkMenuConfig$Config;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkMenuConfig;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "StkMenuConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something wrong happened while interpreting the xml file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0
.end method


# virtual methods
.method public getIcon(I)Landroid/graphics/Bitmap;
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuConfig;->findConfig(I)V

    iget-object v0, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkMenuConfig$Config;->icon:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkMenuConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkMenuConfig$Config;->icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/stk/StkMenuConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkMenuConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/stk/StkMenuConfig;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/stk/StkMenuConfig$Config;->icon:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", slot id: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StkMenuConfig"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuConfig;->findConfig(I)V

    sget-boolean v0, Lcom/android/stk/StkMenuConfig;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLabel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkMenuConfig$Config;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuConfig"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/stk/StkMenuConfig;->mConfigs:[Lcom/android/stk/StkMenuConfig$Config;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/stk/StkMenuConfig$Config;->label:Ljava/lang/String;

    return-object p0
.end method
