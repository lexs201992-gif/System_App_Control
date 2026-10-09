.class public Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;
.super Lcom/android/internal/telephony/UniIccProvider;
.source "UniIccProviderImpl.java"


# static fields
.field private static final AAS:I = 0xe

.field private static final AAS_SUB:I = 0xf

.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final ADN:I = 0x1

.field private static final ADN_ALL:I = 0x7

.field private static final ADN_SUB:I = 0x2

.field private static final AUTHORITY:Ljava/lang/String; = "icc"

.field private static final CONTENT_URI:Ljava/lang/String; = "content://icc/"

.field private static final FDN:I = 0x3

.field private static final FDN_S:I = 0x8

.field private static final FDN_SUB:I = 0x4

.field private static final FDN_S_COLUMN_NAMES:[Ljava/lang/String;

.field private static final FDN_S_SUB:I = 0x9

.field private static final GAS:I = 0xa

.field private static final GAS_SUB:I = 0xb

.field private static final LND:I = 0xc

.field private static final LND_SUB:I = 0xd

.field private static final SDN:I = 0x5

.field private static final SDN_SUB:I = 0x6

.field private static final SIM_AAS_PROJECTION:[Ljava/lang/String;

.field private static final SIM_GROUP_PROJECTION:[Ljava/lang/String;

.field private static final SNE_S:I = 0x10

.field private static final SNE_S_SUB:I = 0x11

.field private static final STR_AAS:Ljava/lang/String; = "aas"

.field private static final STR_ANR:Ljava/lang/String; = "anr"

.field private static final STR_EMAILS:Ljava/lang/String; = "email"

.field private static final STR_GAS:Ljava/lang/String; = "gas"

.field private static final STR_GRP:Ljava/lang/String; = "grp"

.field private static final STR_INDEX:Ljava/lang/String; = "index"

.field private static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field private static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_SNE:Ljava/lang/String; = "sne"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "UniIccProviderImpl"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;

.field private static final WITH_EXCEPTION:Ljava/lang/String; = "with_exception"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "name"

    const-string v1, "number"

    const-string v2, "emails"

    const-string v3, "anr"

    const-string v4, "aas"

    const-string v5, "sne"

    const-string v6, "grp"

    const-string v7, "gas"

    const-string v8, "index"

    const-string v9, "_id"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    const-string v0, "size"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->FDN_S_COLUMN_NAMES:[Ljava/lang/String;

    const-string v0, "gas"

    const-string v1, "index"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->SIM_GROUP_PROJECTION:[Ljava/lang/String;

    const-string v2, "aas"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->SIM_AAS_PROJECTION:[Ljava/lang/String;

    new-instance v1, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v3, "adn"

    const/4 v4, 0x1

    const-string v5, "icc"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "adn/subId/#"

    const/4 v4, 0x2

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "fdn"

    const/4 v4, 0x3

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "fdn/subId/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "sdn"

    const/4 v4, 0x5

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "sdn/subId/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "fdn_s"

    const/16 v4, 0x8

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "fdn_s/subId/#"

    const/16 v4, 0x9

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v3, 0xa

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "gas/subId/#"

    const/16 v3, 0xb

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "lnd"

    const/16 v3, 0xc

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "lnd/subId/#"

    const/16 v3, 0xd

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0xe

    invoke-virtual {v1, v5, v2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "aas/subId/#"

    const/16 v2, 0xf

    invoke-virtual {v1, v5, v0, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "sne"

    const/16 v2, 0x10

    invoke-virtual {v1, v5, v0, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "sne/subId/#"

    const/16 v2, 0x11

    invoke-virtual {v1, v5, v0, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccProvider;-><init>()V

    const-string v0, "UniIccProviderImpl"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, -0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v3, v0

    move/from16 v4, p11

    move/from16 v5, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    invoke-interface/range {v3 .. v20}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriberEx(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    return v2
.end method

.method private addUsimAas(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateUsimAasBySearchForSubscriber(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :goto_1
    return v0
.end method

.method private addUsimGroupBySearch(Ljava/lang/String;I)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-interface {v1, p2, v2, p1}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateUsimGroupBySearchForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return v0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, -0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x0

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    move-object v3, v0

    move/from16 v4, p9

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v20, p8

    invoke-interface/range {v3 .. v20}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriberEx(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return v2
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11

    move-object v1, p0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v8, ""

    const-string v9, ""

    move-object v3, v0

    move/from16 v4, p6

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v10, p5

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return v2
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    move-object v4, v0

    move/from16 v5, p4

    move/from16 v6, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-gez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    return v3
.end method

.method private getEfSize(II)Landroid/database/MatrixCursor;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2, p1}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->FDN_S_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-string v1, "Cannot load ADN records"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->FDN_S_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;
    .locals 1

    nop

    const-string v0, "uni_simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v0

    return-object v0
.end method

.method private getRequestSubId(Landroid/net/Uri;)I
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getSneSize(I)Landroid/database/MatrixCursor;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->getSneSize(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :goto_1
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "size"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1
.end method

.method private loadAas(I)Landroid/database/MatrixCursor;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->getAasInEfForSubscriber(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->SIM_AAS_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adnAas.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->SIM_AAS_PROJECTION:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v2

    :cond_3
    const-string v1, "Cannot load Aas records"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->SIM_AAS_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v2, v1, [Landroid/database/Cursor;

    :cond_2
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method

.method private loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2, p1}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adnRecords.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadRecord(Lcom/android/internal/telephony/phonebook/UniAdnRecord;Landroid/database/MatrixCursor;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    return-object v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot load ADN records efType = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private loadGas(I)Landroid/database/MatrixCursor;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->getGasInEfForSubscriber(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->SIM_GROUP_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adnGas.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->SIM_GROUP_PROJECTION:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadGas: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v4, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v2

    :cond_3
    const-string v1, "Cannot load Gas records"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->SIM_GROUP_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private loadRecord(Lcom/android/internal/telephony/phonebook/UniAdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 14

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getAas()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getSne()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getGrp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getGas()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v1, v0, v9

    const/4 v10, 0x1

    aput-object v2, v0, v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getRecId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadRecord: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", sim_index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, p0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v12, p0

    :goto_0
    if-eqz v3, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v13, v3

    if-lez v13, :cond_1

    aget-object v9, v3, v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_1
    const/4 v9, 0x2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v9

    :cond_2
    const/4 v9, 0x3

    aput-object v4, v0, v9

    const/4 v9, 0x4

    aput-object v5, v0, v9

    const/4 v9, 0x5

    aput-object v6, v0, v9

    const/4 v9, 0x6

    aput-object v7, v0, v9

    const/4 v9, 0x7

    aput-object v8, v0, v9

    const/16 v9, 0x8

    aput-object v10, v0, v9

    const/16 v9, 0x9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v0, v9

    move-object/from16 v9, p2

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v12, p0

    move-object/from16 v9, p2

    :goto_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniIccProviderImpl"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "len of input String is 0"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    return-object p1

    :cond_0
    move-object v1, p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private throwException(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "write record failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "email capacity full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "adn record capacity full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "over the length of name "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "over the length of phone number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "load adn failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "over the length of group name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "group capacity full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "anr record capacity full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "over the length of grp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "over the length of aas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "aas capacity full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "over the length of anr phone number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private updateIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11

    move-object v1, p0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v3, v0

    move/from16 v4, p7

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    return v2
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, -0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v3, v0

    move/from16 v4, p17

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    invoke-interface/range {v3 .. v20}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriberEx(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    return v2
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, -0x1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v3, v0

    move/from16 v4, p12

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-interface/range {v3 .. v15}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEfByIndex: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    return v2
.end method

.method private updateUsimAasByIndex(Ljava/lang/String;II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateUsimAasByIndexForSubscriber(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :goto_1
    if-gez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    :goto_2
    move v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimAasByIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    return v1
.end method

.method private updateUsimGroupByIndex(Ljava/lang/String;II)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getIccPhoneBook()Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p3, p1, p2}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook;->updateUsimGroupByIndexForSubscriber(ILjava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-gez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    :goto_2
    move v0, v2

    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 29

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete, uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " whereArgs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, v11}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot insert into URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    const/16 v3, 0x6f3a

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v4

    const/4 v2, 0x1

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move v9, v3

    move v8, v4

    goto/16 :goto_0

    :pswitch_2
    const/16 v3, 0x6f3a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    const/4 v2, 0x1

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move v9, v3

    move v8, v4

    goto/16 :goto_0

    :pswitch_3
    const/16 v3, 0x6f3a

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v4

    const/4 v1, 0x1

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move v9, v3

    move v8, v4

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x6f3a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    const/4 v1, 0x1

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move v9, v3

    move v8, v4

    goto :goto_0

    :pswitch_5
    const/16 v3, 0x6f3b

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v4

    const/4 v0, 0x1

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move v9, v3

    move v8, v4

    goto :goto_0

    :pswitch_6
    const/16 v3, 0x6f3b

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    const/4 v0, 0x1

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move v9, v3

    move v8, v4

    goto :goto_0

    :pswitch_7
    const/16 v3, 0x6f3a

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v4

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move v9, v3

    move v8, v4

    goto :goto_0

    :pswitch_8
    const/16 v3, 0x6f3a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move v9, v3

    move v8, v4

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v18, 0x0

    const-string v5, ""

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-eqz v17, :cond_1

    const-string v6, "delete AAS"

    invoke-direct {v10, v6}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v10, v5, v4, v8}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->updateUsimAasByIndex(Ljava/lang/String;II)I

    move-result v5

    if-gez v5, :cond_0

    move/from16 v19, v20

    :cond_0
    return v19

    :cond_1
    const/4 v6, 0x2

    if-eqz v13, :cond_3

    array-length v7, v13

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    aget-object v0, v13, v20

    aget-object v1, v13, v19

    aget-object v3, v13, v6

    move-object v7, v0

    move-object v6, v1

    move-object/from16 v25, v2

    const/16 v21, -0x1

    move/from16 v28, v4

    move-object v4, v3

    move/from16 v3, v28

    goto/16 :goto_4

    :cond_3
    :goto_1
    const-string v7, " AND "

    invoke-virtual {v12, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v6, v7

    :goto_2
    const/16 v21, -0x1

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_a

    move-object/from16 v23, v0

    aget-object v0, v7, v6

    move-object/from16 v24, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v2

    const-string v2, "parsing \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    const-string v1, "="

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v3

    array-length v3, v1

    if-eq v3, v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolve: bad whereClause parameter: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    move-object/from16 v3, v22

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    goto :goto_2

    :cond_4
    aget-object v2, v1, v20

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v19

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v0

    const-string v0, "tag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {v10, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    goto/16 :goto_3

    :cond_5
    const-string v0, "number"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {v10, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v3, v22

    move-object/from16 v0, v23

    move-object/from16 v2, v25

    goto :goto_3

    :cond_6
    const-string v0, "email"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move-object v2, v0

    move-object/from16 v3, v22

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    goto :goto_3

    :cond_7
    const-string v0, "pin2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {v10, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    goto :goto_3

    :cond_8
    const-string v0, "index"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {v10, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v3, v22

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    goto :goto_3

    :cond_9
    move-object/from16 v3, v22

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    :goto_3
    goto/16 :goto_2

    :cond_a
    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v22, v3

    move v3, v4

    move-object/from16 v4, v22

    move-object/from16 v7, v23

    move-object/from16 v6, v24

    :goto_4
    const/4 v0, 0x3

    if-ne v9, v0, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v20

    :cond_b
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", efType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    :cond_c
    if-eqz v15, :cond_e

    const/4 v5, 0x0

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v7

    move v12, v3

    move-object v3, v6

    move-object/from16 v26, v4

    move-object v4, v5

    move-object/from16 v5, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v7

    move-object/from16 v7, v24

    move/from16 v21, v8

    move-object/from16 v8, v26

    move/from16 v24, v9

    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_d

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v7, v21

    move/from16 v3, v24

    move-object/from16 v1, v26

    goto/16 :goto_6

    :cond_d
    move/from16 v0, v18

    move/from16 v7, v21

    move/from16 v3, v24

    move-object/from16 v1, v26

    goto/16 :goto_6

    :cond_e
    move v12, v3

    move-object/from16 v26, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v9

    move/from16 v1, v21

    move/from16 v21, v8

    if-eqz v16, :cond_10

    move/from16 v7, v21

    invoke-direct {v10, v5, v12, v7}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->updateUsimGroupByIndex(Ljava/lang/String;II)I

    move-result v0

    if-gez v0, :cond_f

    move/from16 v1, v20

    goto :goto_5

    :cond_f
    move/from16 v1, v19

    :goto_5
    move/from16 v18, v1

    move/from16 v0, v18

    move/from16 v3, v24

    move-object/from16 v1, v26

    goto :goto_6

    :cond_10
    move/from16 v7, v21

    if-ne v12, v1, :cond_11

    const-string v0, "the 3rd app will not use index"

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    move-object/from16 v5, v26

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v18

    move/from16 v0, v18

    move/from16 v3, v24

    move-object/from16 v1, v26

    goto :goto_6

    :cond_11
    const/4 v0, -0x1

    move/from16 v3, v24

    move-object/from16 v1, v26

    invoke-direct {v10, v3, v12, v1, v7}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_12

    const/16 v18, 0x0

    move/from16 v0, v18

    goto :goto_6

    :cond_12
    const/16 v18, 0x1

    move/from16 v0, v18

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    if-nez v0, :cond_13

    return v20

    :cond_13
    iget-object v2, v10, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v11, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v19

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 33

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v15, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    sget-boolean v5, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert, uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " initialValues:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v5, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v13}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    const-string v5, "pin2"

    packed-switch v17, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot insert into URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    const/4 v3, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v5

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v5

    goto/16 :goto_0

    :pswitch_2
    const/4 v3, 0x1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v5

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v5

    goto/16 :goto_0

    :pswitch_3
    const/16 v0, 0x6f44

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v5

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v5

    goto/16 :goto_0

    :pswitch_4
    const/16 v0, 0x6f44

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v5

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v5

    goto/16 :goto_0

    :pswitch_5
    const/4 v1, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v5

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v5

    goto/16 :goto_0

    :pswitch_6
    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v5

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v5

    goto :goto_0

    :pswitch_7
    const/4 v4, 0x1

    const/16 v0, 0x6f3b

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v6

    invoke-virtual {v14, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v6

    goto :goto_0

    :pswitch_8
    const/4 v4, 0x1

    const/16 v0, 0x6f3b

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v6

    invoke-virtual {v14, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v6

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x6f3a

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v5

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v5

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x6f3a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v5

    move v11, v0

    move/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move v10, v5

    :goto_0
    const-string v0, "tag"

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "number"

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "email"

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/4 v0, 0x0

    const/4 v7, 0x0

    if-eqz v22, :cond_1

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    aput-object v22, v0, v7

    move-object/from16 v23, v0

    goto :goto_1

    :cond_1
    move-object/from16 v23, v0

    :goto_1
    const-string v0, "anr"

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "aas"

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sne"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "grp"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "gas"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_2

    const-string v1, ""

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    move-object v2, v1

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert, tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  anr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  sne:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  grp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  gas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  Email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v23, :cond_3

    const-string v1, "null"

    goto :goto_3

    :cond_3
    aget-object v1, v23, v7

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", efType = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, -0x1

    if-eq v11, v1, :cond_4

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x0

    if-eqz v18, :cond_6

    invoke-direct {v12, v3, v10}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->addUsimGroupBySearch(Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move v14, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    goto/16 :goto_5

    :cond_6
    if-eqz v20, :cond_a

    invoke-direct {v12, v2, v10}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->addUsimAas(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_9

    const/16 v7, -0xc

    if-ne v0, v7, :cond_7

    const-string v1, "aas/aas_full"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_7
    const/16 v7, -0xb

    if-ne v0, v7, :cond_8

    const-string v1, "aas/over_aas_max_length"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_8
    return-object v1

    :cond_9
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move v14, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    move-object v14, v1

    move v1, v11

    move-object/from16 v24, v2

    move-object v2, v9

    move-object/from16 v25, v3

    move-object v3, v8

    move-object/from16 v26, v4

    move-object/from16 v4, v23

    move-object/from16 v27, v5

    move-object v5, v6

    move-object/from16 v28, v6

    move-object/from16 v6, v24

    move v14, v7

    move-object/from16 v7, v27

    move-object/from16 v29, v8

    move-object/from16 v8, v26

    move-object/from16 v30, v9

    move-object/from16 v9, v25

    move/from16 v31, v10

    move-object/from16 v10, v19

    move/from16 v32, v11

    move/from16 v11, v31

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :goto_5
    if-eqz v21, :cond_b

    if-gez v0, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fdn insert error =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    const/16 v16, 0x1

    goto :goto_6

    :cond_b
    if-gez v0, :cond_d

    move v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert error =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    const-string v2, "with_exception"

    invoke-virtual {v13, v2, v14}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "throw exception"

    invoke-direct {v12, v2}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    invoke-direct {v12, v1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->throwException(I)V

    :cond_c
    const/4 v2, 0x0

    return-object v2

    :cond_d
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch v17, :pswitch_data_1

    :pswitch_b
    goto :goto_7

    :pswitch_c
    const-string v2, "aas/subId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_d
    const-string v2, "aas/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_e
    const-string v2, "lnd/subId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_f
    const-string v2, "lnd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_10
    const-string v2, "gas/subId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_11
    const-string v2, "gas/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_12
    const-string v2, "fdn/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_13
    const-string v2, "fdn/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_14
    const-string v2, "adn/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_15
    const-string v2, "adn/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_7
    if-eqz v21, :cond_10

    if-eqz v16, :cond_10

    const/4 v2, -0x4

    if-ne v0, v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/over_fdn_name_max_length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    const/4 v2, -0x3

    if-ne v0, v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/fdn_full"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    return-object v2

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert resultUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_11

    iget-object v3, v12, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_11
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectionArgs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x6f44

    const/16 v2, 0x6f49

    const/16 v3, 0x6f3a

    const/16 v4, 0x6f3b

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getSneSize(I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getSneSize(I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadAas(I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadAas(I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadGas(I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadGas(I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getEfSize(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getEfSize(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-boolean v7, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update, uri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " where: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v14, p3

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " whereArgs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v13, p4

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v14, p3

    move-object/from16 v13, p4

    :goto_0
    sget-object v7, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    const-string v7, "pin2"

    packed-switch v18, :pswitch_data_0

    :pswitch_0
    move-object v14, v0

    move-object v7, v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot insert into URL: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    const/4 v6, 0x1

    move-object/from16 v19, v2

    move v12, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v11, v7

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v7

    const/4 v6, 0x1

    move-object/from16 v19, v2

    move v12, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v11, v7

    goto/16 :goto_1

    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    const/4 v5, 0x1

    move-object/from16 v19, v2

    move v12, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v11, v7

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v7

    const/4 v5, 0x1

    move-object/from16 v19, v2

    move v12, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v11, v7

    goto :goto_1

    :pswitch_5
    const/16 v3, 0x6f3b

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v8

    invoke-virtual {v15, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v19, v2

    move v12, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v11, v8

    goto :goto_1

    :pswitch_6
    const/16 v3, 0x6f3b

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v8

    invoke-virtual {v15, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v19, v2

    move v12, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v11, v8

    goto :goto_1

    :pswitch_7
    const/16 v3, 0x6f3a

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    move-object/from16 v19, v2

    move v12, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v11, v7

    goto :goto_1

    :pswitch_8
    const/16 v3, 0x6f3a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v7

    move-object/from16 v19, v2

    move v12, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v11, v7

    :goto_1
    const/16 v23, 0x0

    const-string v2, "tag"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "number"

    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "index"

    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "anr"

    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "aas"

    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sne"

    invoke-virtual {v15, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "grp"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "gas"

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    move/from16 v17, v11

    const-string v11, "email"

    invoke-virtual {v15, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v11, v13, v24

    move-object/from16 v25, v13

    goto :goto_2

    :cond_1
    const/4 v14, 0x1

    const/16 v24, 0x0

    move-object/from16 v25, v16

    :goto_2
    if-nez v4, :cond_2

    const-string v13, ""

    goto :goto_3

    :cond_2
    move-object v13, v4

    :goto_3
    sget-boolean v4, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update, new tag: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ",  number:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ",  anr:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ",  aas: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ",  sne:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ",  grp:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ",  gas :"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ",  email:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ",  index:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", efType = 0x"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v14, -0x1

    if-eq v12, v14, :cond_3

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_4
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    :cond_4
    const/16 v26, 0x0

    const/16 v27, -0x1

    const-string v4, "newNumber"

    const-string v14, "newTag"

    if-eqz v20, :cond_6

    const-string v28, ""

    const-string v29, ""

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v2, v28

    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v3, v29

    invoke-virtual {v15, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v8

    move-object/from16 v8, v30

    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v9, v32

    const/4 v4, 0x0

    const-string v10, ""

    move-object/from16 v33, v5

    move-object v5, v10

    const-string v10, ""

    move-object/from16 v34, v6

    move-object v6, v10

    const-string v10, ""

    move-object/from16 v35, v7

    move-object v7, v10

    const/4 v10, 0x0

    const-string v14, ""

    move-object/from16 v36, v11

    move/from16 v37, v17

    move-object v11, v14

    const-string v14, ""

    move/from16 v38, v12

    move-object v12, v14

    const-string v14, ""

    move-object/from16 v39, v13

    move-object v13, v14

    const-string v14, ""

    const/16 v24, 0x1

    const-string v16, ""

    move-object/from16 v15, v16

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v16, v19

    invoke-direct/range {v0 .. v17}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v27

    if-gez v27, :cond_5

    return v27

    :cond_5
    const/4 v0, 0x1

    move-object/from16 v7, p0

    move-object/from16 v14, p1

    move-object/from16 v10, v30

    move-object/from16 v9, v32

    move/from16 v16, v37

    move-object/from16 v29, v40

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_6
    move-object/from16 v40, v0

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v31, v8

    move-object/from16 v36, v11

    move/from16 v38, v12

    move-object/from16 v39, v13

    move/from16 v37, v17

    const/16 v24, 0x1

    const-string v13, "with_exception"

    if-eqz v21, :cond_9

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v15, p0

    move/from16 v11, v37

    move-object/from16 v12, v40

    invoke-direct {v15, v12, v0, v11}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->updateUsimGroupByIndex(Ljava/lang/String;II)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v1, 0x0

    move-object/from16 v8, p1

    const/4 v7, 0x0

    invoke-virtual {v8, v13, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {v15, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->throwException(I)V

    :cond_7
    move/from16 v27, v0

    move v0, v1

    move v2, v7

    move-object v14, v8

    move/from16 v16, v11

    move-object/from16 v29, v12

    move-object v7, v15

    goto/16 :goto_7

    :cond_8
    move-object/from16 v8, p1

    const/4 v7, 0x0

    const/4 v1, 0x1

    move/from16 v27, v0

    move v0, v1

    move v2, v7

    move-object v14, v8

    move/from16 v16, v11

    move-object/from16 v29, v12

    move-object v7, v15

    goto/16 :goto_7

    :cond_9
    move-object/from16 v15, p0

    move-object/from16 v8, p1

    move/from16 v11, v37

    move-object/from16 v12, v40

    const/4 v7, 0x0

    if-eqz v22, :cond_b

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v6, v39

    invoke-direct {v15, v6, v0, v11}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->updateUsimAasByIndex(Ljava/lang/String;II)I

    move-result v0

    if-gez v0, :cond_a

    move v14, v7

    goto :goto_5

    :cond_a
    move/from16 v14, v24

    :goto_5
    return v14

    :cond_b
    move-object/from16 v6, v39

    if-nez v35, :cond_c

    const-string v0, "the 3rd app will not use index"

    invoke-direct {v15, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->log(Ljava/lang/String;)V

    move-object/from16 v13, p2

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object v4, v10

    move-object v5, v9

    move-object v14, v6

    move-object/from16 v6, v19

    move v15, v7

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->updateIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    move-object/from16 v7, p0

    move/from16 v16, v11

    move-object/from16 v29, v12

    move-object/from16 v39, v14

    move v2, v15

    move-object v14, v8

    goto/16 :goto_7

    :cond_c
    move-object v14, v6

    move v15, v7

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, v25

    move-object/from16 v5, v34

    move-object/from16 v7, v33

    move-object/from16 v39, v14

    move-object v14, v8

    move-object/from16 v8, v31

    move-object/from16 v17, v9

    move-object v9, v12

    move-object/from16 v28, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move-object/from16 v11, v19

    move-object/from16 v29, v12

    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v14, v13, v15}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v7, p0

    move v2, v15

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->throwException(I)V

    goto :goto_6

    :cond_d
    move-object/from16 v7, p0

    move v2, v15

    :goto_6
    move/from16 v27, v0

    move v0, v1

    move-object/from16 v9, v17

    move-object/from16 v10, v28

    goto :goto_7

    :cond_e
    move-object/from16 v7, p0

    move v2, v15

    const/4 v1, 0x1

    move/from16 v27, v0

    move v0, v1

    move-object/from16 v9, v17

    move-object/from16 v10, v28

    :goto_7
    if-nez v0, :cond_f

    return v2

    :cond_f
    iget-object v1, v7, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v24

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
