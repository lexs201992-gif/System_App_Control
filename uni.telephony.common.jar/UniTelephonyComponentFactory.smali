.class public Lcom/android/internal/telephony/UniTelephonyComponentFactory;
.super Lcom/android/internal/telephony/TelephonyComponentFactory;
.source "UniTelephonyComponentFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniTelephonyComponentFactory"

.field private static sInstance:Lcom/android/internal/telephony/UniTelephonyComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    sput-object p0, Lcom/android/internal/telephony/UniTelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/UniTelephonyComponentFactory;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/UniTelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/UniTelephonyComponentFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/UniTelephonyComponentFactory;

    invoke-direct {v0}, Lcom/android/internal/telephony/UniTelephonyComponentFactory;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/UniTelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/UniTelephonyComponentFactory;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UniTelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/UniTelephonyComponentFactory;

    return-object v0
.end method


# virtual methods
.method public initMultiSimSettingController(Landroid/content/Context;)Lcom/android/internal/telephony/MultiSimSettingController;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/telephony/UniMultiSimSettingController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    return-object v0
.end method

.method public makeCsimFileHandler(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniCsimFileHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UniCsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeDataNetworkController(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/data/DataNetworkController;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/UniDataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    return-object v0
.end method

.method public makeDataProfileManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)Lcom/android/internal/telephony/data/DataProfileManager;
    .locals 7

    new-instance v6, Lcom/android/internal/telephony/data/UniDataProfileManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/data/UniDataProfileManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    return-object v6
.end method

.method public makeDataRetryManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)Lcom/android/internal/telephony/data/DataRetryManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/data/DataNetworkController;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/os/Looper;",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ")",
            "Lcom/android/internal/telephony/data/DataRetryManager;"
        }
    .end annotation

    new-instance v6, Lcom/android/internal/telephony/data/UniDataRetryManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/data/UniDataRetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-object v6
.end method

.method public makeDataSettingsManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)Lcom/android/internal/telephony/data/DataSettingsManager;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/UniDataSettingsManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-object v0
.end method

.method public makeDataStallRecoveryManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)Lcom/android/internal/telephony/data/DataStallRecoveryManager;
    .locals 7

    new-instance v6, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V

    return-object v6
.end method

.method public makeEmergencyNumberTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;

    new-instance v1, Lcom/android/internal/telephony/UniTelephonyComponentFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/UniTelephonyComponentFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;)V

    return-object v0
.end method

.method public makeImsPhoneConnection(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 7

    new-instance v6, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    return-object v6
.end method

.method public makeImsPhoneConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZLcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 9

    new-instance v8, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZLcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V

    return-object v8
.end method

.method public makeImsPhoneConnection(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 7

    new-instance v6, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    return-object v6
.end method

.method public makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .locals 8

    new-instance v7, Lcom/android/internal/telephony/UniGsmCdmaPhone;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/UniGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object v7
.end method

.method public makeRuimRecords(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/RuimRecords;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniRuimRecords;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UniRuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeSIMRecords(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/SIMRecords;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniSIMRecords;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/UniServiceStateTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/UniServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeSignalStrengthController(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/SignalStrengthController;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/UniSignalStrengthController;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/UniSignalStrengthController;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    return-object v0
.end method

.method public makeSimFileHandler(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UniSIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V

    return-object v0
.end method

.method public makeUiccPhoneBookController()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;-><init>()V

    return-void
.end method

.method public makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 8

    new-instance v7, Lcom/android/internal/telephony/uicc/UniUiccProfile;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/UniUiccProfile;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V

    return-object v7
.end method

.method public makeUniAbsSmsUtils()Lcom/android/internal/telephony/UniAbsSmsUtils;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/UniSmsUtils;

    invoke-direct {v0}, Lcom/android/internal/telephony/UniSmsUtils;-><init>()V

    return-object v0
.end method

.method public makeUniDataUtils()Lcom/android/internal/telephony/data/UniDataUtils;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/UniDataUtilsImpl;-><init>()V

    return-object v0
.end method

.method public makeUsimFileHandler(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V

    return-object v0
.end method
