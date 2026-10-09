.class public Lcom/android/internal/telephony/data/UnisocDataManagerImpl;
.super Lcom/android/internal/telephony/data/UnisocDataManager;
.source "UnisocDataManagerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/telephony/data/UnisocDataManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/UnisocDataManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UnisocDataManager;-><init>()V

    return-void
.end method

.method private isVowifiConnected(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/data/UnisocDataManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, " isVowifiConnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsServiceEx;->getCurrentImsFeatureForPhone(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_0

    const-string v3, " is Vowifi Connected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method


# virtual methods
.method public isSuspendDueToOtherPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/data/UnisocDataManagerImpl;->isVowifiConnected(I)Z

    move-result v7

    if-eqz v7, :cond_1

    return v4

    :cond_1
    if-eq v6, p1, :cond_2

    move-object v1, v6

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method
