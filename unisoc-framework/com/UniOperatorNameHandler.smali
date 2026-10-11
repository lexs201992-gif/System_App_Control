.class public Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;
.super Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler$Stub;
.source "UniOperatorNameHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/UniUiccConstants;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "UniOperatorNameHandler"

.field private static final blacklist UNISOC_PLMN_COMMON_PERMISSION:Ljava/lang/String; = "com.unisoc.permisson.PLMN_COMMON"

.field private static blacklist mInstance:Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

.field private static blacklist mPhoneCount:I


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private blacklist mResetPlmn:Ljava/lang/Boolean;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmResetPlmn(Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mResetPlmn:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePlmn(Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->updatePlmn()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler$Stub;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mResetPlmn:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler$1;-><init>(Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mPhoneCount:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->publish()V

    return-void
.end method

.method private blacklist getFirstPnn(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p2, :cond_0

    const-string v1, "regplmn is  null, doesn\'t get pnn name from sim."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PNN first record name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UniPnnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniPnnRecord;->getLongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UniPnnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UniPnnRecord;->getLongName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstPnn return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getLocaleOperatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "^[0-9]{5,6}$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getResourcesForMccMnc(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x8030012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const v3, 0x80c0016

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferLocaleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", localeName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UniOperatorNameHandler"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    return-object v0
.end method

.method private blacklist getOperatorNameFromOplNrPnn(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p2, :cond_0

    const-string v1, "regplmn is  null,doesn\'t  getOperatorNameFromOplNrPnn from sim."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getPnnRecordnum(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPnnRecords.get(PnnRecordnumNr - 1).getLongName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UniPnnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniPnnRecord;->getLongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UniPnnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UniPnnRecord;->getLongName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid PnnRecordnumNr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return-object v0

    :cond_4
    :goto_1
    const-string v1, "mPnnRecords is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getOperatorNameFromOplPnn(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p2, :cond_0

    const-string v1, "regplmn is  null,doesn\'t  getOperatorNameFromOplPnn from sim."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getPnnRecordnum(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPnnRecords.get(PnnRecordnum - 1).getLongName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UniPnnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniPnnRecord;->getLongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPnnRecords()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UniPnnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UniPnnRecord;->getLongName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid PnnRecordnum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return-object v0

    :cond_4
    :goto_1
    const-string v1, "mPnnRecords is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getPnn(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getIccmServiceTable()Lcom/android/internal/telephony/uicc/UniIccServiceTable;

    move-result-object v1

    const-string v2, "UniOperatorNameHandler"

    if-nez v1, :cond_0

    const-string v3, "ist is null, return empty pnn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->pnnAvaliable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->oplAvaliable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getOperatorNameFromOplPnn(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->pnnAvaliable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getFirstPnn(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPnn return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist getPnnRecordnum(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;I)I
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    array-length v3, v0

    if-le v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    const-string v2, "invalid lac"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getOplNrRecords()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getOplRecords()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "OplRecord not exist"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getHomePlmns()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OplRecord not exist, but registered in the HPLMN"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getOplRecords()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getOplRecords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UniOplRecord;

    iget-object v4, v3, Lcom/android/internal/telephony/uicc/UniOplRecord;->mOplplmn:[I

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->matchOplplmn([I[I)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPnnRecordnum  lac:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", record.mOpllac1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/uicc/UniOplRecord;->mOpllac1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", record.mOpllac2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/uicc/UniOplRecord;->mOpllac2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/internal/telephony/uicc/UniOplRecord;->mOpllac1:I

    if-gt v4, p3, :cond_5

    iget v4, v3, Lcom/android/internal/telephony/uicc/UniOplRecord;->mOpllac2:I

    if-gt p3, v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "record.getPnnRecordNum() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniOplRecord;->getPnnRecordNum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniOplRecord;->getPnnRecordNum()I

    move-result v1

    :cond_5
    goto :goto_1

    :cond_6
    const-string v2, "No invalid pnn record match"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return v1

    :cond_7
    :goto_2
    const-string v2, "regplmn is invalid, fail to get pnn name from sim."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private blacklist getResourcesForMccMnc(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->mnc:I

    iget v2, v1, Landroid/content/res/Configuration;->mnc:I

    if-nez v2, :cond_0

    const v2, 0xffff

    iput v2, v1, Landroid/content/res/Configuration;->mnc:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResourcesForMccMnc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3, v2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    new-instance v4, Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v4, v5, v3, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v4
.end method

.method private blacklist getSubId(I)I
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    return v0
.end method

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;
    .locals 4

    const-class v0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mInstance:Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mInstance:Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    goto :goto_0

    :cond_0
    const-string v1, "UniOperatorNameHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mInstance:Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mInstance:Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isIgnoreOns(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getSubId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x803000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniOperatorNameHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist matchOplplmn([I[I)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0xd

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    array-length v3, p2

    array-length v4, p1

    if-eq v3, v4, :cond_1

    const-string v3, "regplmn length is not equal oplmn length"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    aget v3, p1, v2

    if-ne v3, v1, :cond_2

    aget v3, p2, v2

    aput v3, p1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_5

    aget v3, p1, v2

    aget v4, p2, v2

    if-eq v3, v4, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchOplplmn match:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->log(Ljava/lang/String;)V

    return v0

    :cond_6
    :goto_3
    return v2
.end method

.method private blacklist plmnIgnoreDisplayRule(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getSubId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x80c0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    return-object v4

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, p3

    :goto_0
    return-object v1
.end method

.method private blacklist publish()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniOperatorNameHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ions_ex"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private blacklist updatePlmn()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual {v2, v1, v0}, Lcom/android/unisoc/telephony/RadioInteractor;->updateOperatorName(Ljava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mResetPlmn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/unisoc/telephony/RadioInteractor;->updateOperatorName(Ljava/lang/String;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mResetPlmn:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public blacklist getHighPriorityPlmn(ILjava/lang/String;I)Ljava/lang/String;
    .locals 6

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "UniOperatorNameHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHighPriorityPlmn for phone "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mccmnc "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and lac "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "50503"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const-string v3, "Lebara"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "716"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, ""

    return-object v1

    :cond_3
    const-string v2, ""

    invoke-static {}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->getInstance()Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->getUniIccRecordForPhone(I)Lcom/android/internal/telephony/uicc/UniIccRecords;

    move-result-object v3

    const/4 v4, -0x1

    if-ne p3, v4, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getLac()I

    move-result p3

    :cond_4
    invoke-direct {p0, v3, p2, p3, p1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getPnn(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->isIgnoreOns(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getHomePlmns()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getSimOns()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t get pnn from sim, try ons next. ONS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->plmnIgnoreDisplayRule(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getLocaleOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "46697"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "GT 4G R"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "GT R"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    goto :goto_0

    :cond_7
    return-object v2

    :cond_8
    :goto_0
    return-object v1

    :cond_9
    :goto_1
    return-object p2
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->mContext:Landroid/content/Context;

    const-string v1, "com.unisoc.permisson.PLMN_COMMON"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, "UniOperatorNameHandler"

    const-string v2, "IRadiointeractor-> permission denied !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1
.end method

.method public blacklist updateNetworkList(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "updateNetworkList"

    const-string v1, "UniOperatorNameHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    array-length v0, p2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    aget-object v2, p2, v0

    const/4 v3, 0x2

    aget-object v4, p2, v3

    const/4 v5, 0x3

    aget-object v6, p2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNetworkList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x5

    if-le v7, v9, :cond_5

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v8, v7, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, -0x1

    if-nez v9, :cond_1

    invoke-virtual {p0, p1, v8, v10}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->getHighPriorityPlmn(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object v2, v9

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "\\dG"

    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v2, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    array-length v9, v7

    const/4 v11, 0x1

    if-le v9, v11, :cond_3

    aget-object v9, v7, v11

    goto :goto_0

    :cond_3
    const-string v9, ""

    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_4
    goto :goto_1

    :sswitch_0
    const-string v0, "7"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_2

    :sswitch_1
    const-string v0, "2"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_2

    :sswitch_2
    const-string v0, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v11

    goto :goto_2

    :sswitch_3
    const-string v3, "0"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :goto_1
    move v0, v10

    :goto_2
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACT was not reported by RIL with PLMN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " 4G"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " 3G"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " 2G"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x104000e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkList operatorName : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x32 -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
