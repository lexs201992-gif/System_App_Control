.class public Lcom/android/internal/telephony/UniTelephonyInjectionFactoryImpl;
.super Lcom/android/internal/telephony/UniTelephonyInjectionFactory;
.source "UniTelephonyInjectionFactoryImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/telephony/UniTelephonyInjectionFactoryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/UniTelephonyInjectionFactoryImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniTelephonyInjectionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public makeSimManager()Lcom/android/internal/telephony/uicc/UniTeleSimManager;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniTeleSimManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UniTeleSimManagerImpl;-><init>()V

    return-object v0
.end method

.method public makeUniCatManager()Lcom/android/internal/telephony/cat/UniCatManager;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/UniTelephonyInjectionFactoryImpl;->TAG:Ljava/lang/String;

    const-string v1, "makeUniCatManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/cat/UniCatManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/UniCatManagerImpl;-><init>()V

    return-object v0
.end method

.method public makeUniIccProvider(Landroid/content/Context;)Lcom/android/internal/telephony/UniIccProvider;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/phonebook/UniIccProviderImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeUniTeleImsManager()Lcom/android/internal/telephony/UniTeleImsManager;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/UniTeleImsManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/UniTeleImsManagerImpl;-><init>()V

    return-object v0
.end method

.method public makeUniTeleSmsManager()Lcom/android/internal/telephony/UniTeleSmsManager;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/UniTeleSmsManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/UniTeleSmsManagerImpl;-><init>()V

    return-object v0
.end method

.method public makeUnisocDataManager()Lcom/android/internal/telephony/data/UnisocDataManager;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/UniTelephonyInjectionFactoryImpl;->TAG:Ljava/lang/String;

    const-string v1, "makeUnisocDataManagerImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/data/UnisocDataManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/UnisocDataManagerImpl;-><init>()V

    return-object v0
.end method

.method public makeUnisocSsManager()Lcom/android/internal/telephony/UnisocSsManager;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/UnisocSsManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/UnisocSsManagerImpl;-><init>()V

    return-object v0
.end method
