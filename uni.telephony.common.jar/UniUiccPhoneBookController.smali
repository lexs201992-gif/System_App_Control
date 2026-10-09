.class public Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;
.super Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;
.source "UniUiccPhoneBookController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniUiccPhoneBookController"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/IUniIccPhoneBook$Stub;-><init>()V

    const-string v0, "uni_simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private checkPermission(Lcom/android/internal/telephony/Phone;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v2, "check READ_CONTACTS permission fail"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultSubscription()I
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method private getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v1
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    return-object v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniUiccPhoneBookController"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniUiccPhoneBookController"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAasInEfForSubscriber(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getAasInEf()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonebook/UniAdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getAdnRecordsInEfEx(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "getAdnRecordsInEfEx iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getAdnRecordsSizeForSubscriber(II)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "getAdnRecordsSizeEx iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnrNum(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getAnrNum()I

    move-result v1

    return v1

    :cond_0
    const-string v1, "getAnrNum iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnrRecordsSize(I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getAnrRecordsSize()[I

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "getAnrRecordsSize iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[II)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p6}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p6}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "getAvalibleAnrCount iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[II)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p6}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p6}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "getAvalibleEmailCount iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEmailMaxLen(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getEmailMaxLen()I

    move-result v1

    return v1

    :cond_0
    const-string v1, "getEmailMaxLen iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEmailNum(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getEmailNum()I

    move-result v1

    return v1

    :cond_0
    const-string v1, "getEmailNum iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEmailRecordsSize(I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getEmailRecordsSize()[I

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "getEmailRecordsSize iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGasInEfForSubscriber(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getGasInEf()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "getGasInEfForSubscriber iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getGroupNum(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getGroupNum()I

    move-result v1

    return v1

    :cond_0
    const-string v1, "getGroupNum iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInsertIndex(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getInsertIndex()I

    move-result v1

    return v1

    :cond_0
    const-string v1, "getInsertIndex iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPhoneNumMaxLen(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getPhoneNumMaxLen()I

    move-result v1

    return v1

    :cond_0
    const-string v1, "getPhoneNumMaxLen iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSneLength(I)[I
    .locals 2

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getSneLength()[I

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSneSize(I)I
    .locals 3

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getSneSize()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getUsimGroupNameMaxLen(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUsimGroupNameMaxLen()I

    move-result v1

    return v1

    :cond_0
    const-string v1, "getUsimGroupNameMaxLen iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsimGroupSize(I)[I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUsimGroupSize()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "getUsimGroupSize iccPbkIntMgr is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isApplicationOnIcc(II)Z
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->checkPermission(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->isApplicationOnIcc(I)Z

    move-result v1

    return v1

    :cond_0
    const-string v1, "isApplicationOnIcc iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 14

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const-string v1, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null"

    move-object v2, p0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method

.method public updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    const-string v1, "updateAdnRecordsInEfBySearchEx iccPbkIntMgr is null"

    move-object v2, p0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public updateAdnRecordsInEfBySearchForSubscriberEx(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-virtual/range {v2 .. v18}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const-string v1, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null"

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method

.method public updateUsimAasByIndexForSubscriber(Ljava/lang/String;II)I
    .locals 3

    nop

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateUsimAasByIndex(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public updateUsimAasBySearchForSubscriber(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    nop

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateUsimAasBySearch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_0
    return v1
.end method

.method public updateUsimGroupByIndexForSubscriber(ILjava/lang/String;I)I
    .locals 2

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateUsimGroupByIndex(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    const-string v1, "updateUsimGroupByIdForSubscriber iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method

.method public updateUsimGroupBySearchForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateUsimGroupBySearch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const-string v1, "updateUsimGroupBySearchForSubscriber iccPbkIntMgr is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUiccPhoneBookController;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method
