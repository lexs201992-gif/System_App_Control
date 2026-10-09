.class public Lcom/android/internal/telephony/data/UniDataUtilsImpl;
.super Lcom/android/internal/telephony/data/UniDataUtils;
.source "UniDataUtilsImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private mUniDataNetworkController:Lcom/android/internal/telephony/data/UniDataNetworkController;

.field private mUniDataSettingsManager:Lcom/android/internal/telephony/data/UniDataSettingsManager;

.field private mUniDataStallRecoveryManager:Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public checkVendorDataAllowed(I)Z
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVendorDataAllowed phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/UniDataNetworkController;

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mUniDataNetworkController:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataNetworkController;->checkVendorDataAllowed()Z

    move-result v0

    return v0
.end method

.method public getDataProfilesForPayState(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/data/DataNetworkController;",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/UniDataProfileManager;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/UniDataProfileManager;->getDataProfilesForPayState(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSimStateForPhone(Lcom/android/internal/telephony/Phone;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUniDataCallList(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->TAG:Ljava/lang/String;

    const-string v1, "getUniDataCallList() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataStallRecoveryManager()Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataStallRecoveryManager()Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mUniDataStallRecoveryManager:Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getUniDataCallList()V

    :cond_1
    return-void
.end method

.method public isAllDataDisconnected(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->TAG:Ljava/lang/String;

    const-string v1, "isAllDataDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/UniDataNetworkController;

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mUniDataNetworkController:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataNetworkController;->isAllDataDisconnected()Z

    move-result v0

    return v0
.end method

.method public isDsrmRecoveryAlreadyStarted(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->TAG:Ljava/lang/String;

    const-string v1, "isDsrmRecoveryAlreadyStarted() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataStallRecoveryManager()Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataStallRecoveryManager()Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mUniDataStallRecoveryManager:Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->isDsrmRecoveryAlreadyStarted()Z

    move-result v0

    return v0

    :cond_1
    return v0
.end method

.method public setVendorDataEnabled(IZI)V
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVendorDataEnabled phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/UniDataSettingsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mUniDataSettingsManager:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->setVendorDataEnabled(ZI)V

    return-void
.end method

.method public uniCleanUpDataNetwork(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->TAG:Ljava/lang/String;

    const-string v1, "uniCleanUpDataNetwork() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataStallRecoveryManager()Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataStallRecoveryManager()Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataUtilsImpl;->mUniDataStallRecoveryManager:Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->uniCleanUpDataNetwork()V

    :cond_1
    return-void
.end method
