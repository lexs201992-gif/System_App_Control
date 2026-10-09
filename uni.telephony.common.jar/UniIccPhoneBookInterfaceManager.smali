.class public Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "UniIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;,
        Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;,
        Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ICC_CHANGED:I = 0x64

.field private static final EVENT_RECORDS_LOADED:I = 0x65

.field private static final TAG:Ljava/lang/String; = "UniIccPhoneBookIM"


# instance fields
.field private final mAllLoadRequest:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;

.field private mCachePHBHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;

.field private mCachePHBThread:Landroid/os/HandlerThread;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsPhonebookLoading:Z

.field private mLockForReadSizes:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUiccPort:Lcom/android/internal/telephony/uicc/UiccPort;

.field private mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

.field private mUpdateThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLockForReadSizes(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mLockForReadSizes:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPhonebookLoading(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mIsPhonebookLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdateIccAvailability(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->onUpdateIccAvailability()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhoneId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mIsPhonebookLoading:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mLockForReadSizes:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccPort:Lcom/android/internal/telephony/uicc/UiccPort;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mAllLoadRequest:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->createUpdateThread()V

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->registerForIccChanged(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private createUpdateThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;-><init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;

    return-void
.end method

.method private getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->isHasUsimApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUsimAdnRecordsSize()[I
    .locals 2

    const-string v0, "getUsimAdnRecordsSize"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAdnRecordsSize()[I

    move-result-object v1

    return-object v1
.end method

.method private isHasUsimApp()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUiccPort()Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHasUsimApp NullPointException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniIccPhoneBookIM"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onUpdateIccAvailability()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhoneId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccPort;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccPort:Lcom/android/internal/telephony/uicc/UiccPort;

    if-eq v3, v0, :cond_3

    :cond_2
    const-string v3, "Icc changed. Reregestering."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->unregisterUiccCardEvents()V

    iput-object v2, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccPort:Lcom/android/internal/telephony/uicc/UiccPort;

    iput-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->registerUiccCardEvents()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private registerForIccChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhoneId:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mCachePHBThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mCachePHBThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;-><init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mCachePHBHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_0

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private registerUiccCardEvents()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mCachePHBHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mCachePHBHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private updateEfForIccType(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->isPbrFileExisting()Z

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->isContainAdnInPbr()Z

    move-result v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEfForIccType: isPbrFileExisting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isContainAdnInPbr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    const/16 v2, 0x6f3a

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->isHasUsimApp()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0x4f30

    return v2

    :cond_1
    return p1
.end method

.method private waitForResult(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;)V
    .locals 2

    monitor-enter p1

    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "interrupted while trying to update by search"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getAasInEf()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "getAasInEf"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->isHasUsimApp()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Can not get aas from a sim card"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-nez v0, :cond_1

    const-string v0, "getAasInEf failed because mUniAdnCache is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->loadAasFromUsim()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdnRecordsInEfEx(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonebook/UniAdnRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsInEFEx: efid = 0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->checkThread()V

    iget-object p1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mAllLoadRequest:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;-><init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest-IA;)V

    move-object p1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mAllLoadRequest:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    monitor-enter v2

    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v4, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v3, v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->extensionEfForEf(I)I

    move-result v1

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mResult:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    :try_start_1
    const-string v3, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsSize efid = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mLockForReadSizes:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mIsPhonebookLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mLockForReadSizes:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Interrupted Exception in getAdnRecordsSize"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->isHasUsimApp()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v0

    const/16 v1, 0x4f30

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUsimAdnRecordsSize()[I

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getAnrNum()I
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAnrNum()I

    move-result v1

    return v1
.end method

.method public getAnrRecordsSize()[I
    .locals 9

    const-string v0, "getAnrRecordsSize"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFAnrInfo(I)I

    move-result v4

    if-gtz v4, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v7, v5, v6

    aput v7, v2, v6

    const/4 v6, 0x1

    aget v7, v2, v6

    aget v8, v5, v6

    add-int/2addr v7, v8

    aput v7, v2, v6

    const/4 v6, 0x2

    aget v7, v2, v6

    aget v8, v5, v6

    add-int/2addr v7, v8

    aput v7, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v1

    return-object v1
.end method

.method public getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 7

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getEmailMaxLen()I
    .locals 2

    const-string v0, "getEmailMaxLen"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getEmailMaxLen()I

    move-result v1

    return v1
.end method

.method public getEmailNum()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getEmailNum()I

    move-result v2

    return v2
.end method

.method public getEmailRecordsSize()[I
    .locals 2

    const-string v0, "getEmailRecordsSize"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getEmailRecordsSize()[I

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getGasInEf()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "getGasInEf"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->isHasUsimApp()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Can not get gas from a sim card"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-nez v0, :cond_1

    const-string v0, "getGasInEf failed because mUniAdnCache is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->loadGasFromUsim()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGroupNum()I
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getGroupNum()I

    move-result v1

    return v1
.end method

.method public getInsertIndex()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-nez v0, :cond_0

    const-string v0, "getInsertIndex:adn cache is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getInsertId()I

    move-result v0

    return v0
.end method

.method public getPhoneNumMaxLen()I
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x28

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getPhoneNumMaxLen()I

    move-result v1

    return v1
.end method

.method public getRecordsSize(I)[I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecordsSize: efid = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    const-string v1, "the efid is invalid"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->checkThread()V

    new-instance v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;-><init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest-IA;)V

    move-object v0, v1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/android/internal/telephony/uicc/RuimFileHandler;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [I

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mResult:Ljava/lang/Object;

    check-cast v1, [I

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSneLength()[I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->isHasUsimApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Can not get sne length from a sim card"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-nez v0, :cond_1

    const-string v0, "getSneLength failed because mUniAdnCache is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSneLength()[I

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getSneSize()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getSneSize"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->isHasUsimApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Can not get sne size from a sim card"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-nez v0, :cond_1

    const-string v0, "getSneSize failed because mUniAdnCache is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSneSize()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUsimGroupNameMaxLen()I
    .locals 4

    const-string v0, "getGroupNameMaxLen"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFGasInfo()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v3, v1

    return v1
.end method

.method public getUsimGroupSize()[I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getUsimGroupSize"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "uniUsimPhoneBookManager == null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFGasInfo()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getRecordsSize(I)[I

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isApplicationOnIcc(I)Z
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    aget-object v1, v1, p1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->isHasUsimApp()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    iget-object v0, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfByIndexEx: efid = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p10

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v15, p10

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfByIndexEx: newid = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->checkThread()V

    new-instance v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;-><init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest-IA;)V

    move-object v13, v0

    monitor-enter v13

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v13}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    const/4 v0, 0x0

    const/16 v16, 0x0

    iget-object v2, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    :try_start_1
    const-string v2, "updateAdnRecordsInEfByIndexEx failed because mUniAdnCache is null"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x1

    return v2

    :catchall_0
    move-exception v0

    move-object v8, v13

    move v9, v14

    goto :goto_2

    :cond_1
    const/16 v2, 0x4f30

    if-ne v14, v2, :cond_2

    :try_start_2
    new-instance v17, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v17

    iget-object v2, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v13

    move-object v13, v2

    move v9, v14

    move/from16 v15, p10

    move-object/from16 v17, p11

    :try_start_3
    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateUSIMAdnByIndex(IILcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v4, v16

    goto :goto_1

    :cond_2
    move-object v8, v13

    move v9, v14

    new-instance v4, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-direct {v4, v11, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    move v3, v9

    move/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateAdnByIndexEx(ILcom/android/internal/telephony/phonebook/UniAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    :goto_1
    invoke-direct {v1, v8}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;)V

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, v8, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catchall_1
    move-exception v0

    move-object v8, v13

    move v9, v14

    :goto_2
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v10, p16

    iget-object v0, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearchEx: efid = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), pin2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch: efid = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->checkThread()V

    new-instance v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;-><init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest-IA;)V

    move-object v8, v0

    monitor-enter v8

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v8}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    const/4 v0, 0x0

    const/4 v15, 0x0

    iget-object v2, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    :try_start_1
    const-string v2, "updateAdnRecordsInEfBySearchEx failed because mUniAdnCache is null"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    monitor-exit v8

    const/4 v2, -0x1

    return v2

    :catchall_0
    move-exception v0

    move-object v15, v8

    move/from16 v18, v9

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x6f44

    if-ne v9, v2, :cond_3

    sget-boolean v2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertLNDRecord: efid = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    :cond_2
    new-instance v2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-direct {v2, v11, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v2

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v0

    iget-object v15, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    move/from16 v16, v9

    move-object/from16 v19, p16

    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->insertLndBySearch(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v8

    move-object/from16 v5, v18

    move/from16 v18, v9

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x4f30

    if-ne v9, v2, :cond_4

    :try_start_2
    new-instance v23, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    const-string v7, ""

    const-string v16, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v17, v15

    move-object v15, v8

    move-object/from16 v8, p6

    move/from16 v18, v9

    move-object/from16 v9, p7

    move-object/from16 v10, v16

    :try_start_3
    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v24, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    move-object/from16 v2, v24

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    move-object/from16 v21, v0

    move/from16 v22, v18

    move-object/from16 v25, p16

    move-object/from16 v26, v20

    invoke-virtual/range {v21 .. v26}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateUSIMAdnBySearch(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v17, v23

    move-object/from16 v5, v24

    goto :goto_0

    :cond_4
    move/from16 v18, v9

    move-object/from16 v17, v15

    move-object v15, v8

    new-instance v4, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-direct {v4, v11, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-direct {v5, v13, v14}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    move/from16 v3, v18

    move-object/from16 v6, p16

    move-object/from16 v7, v20

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateAdnBySearchEx(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v17, v4

    :goto_0
    invoke-direct {v1, v15}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;)V

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, v15, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catchall_1
    move-exception v0

    move-object v15, v8

    move/from16 v18, v9

    :goto_1
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    iget-object v0, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch: efid = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")==> ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), pin2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v15, p6

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v15, p6

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch: efid = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->checkThread()V

    new-instance v0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;-><init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest-IA;)V

    move-object v9, v0

    monitor-enter v9

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v9}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    const/4 v0, 0x0

    const/16 v16, 0x0

    iget-object v2, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_2

    const/16 v2, 0x4f30

    if-ne v10, v2, :cond_1

    :try_start_1
    new-instance v17, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v18, ""

    const-string v19, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v21, v9

    move-object/from16 v9, v18

    move/from16 v22, v10

    move-object/from16 v10, v19

    :try_start_2
    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v2, v18

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    move-object v15, v0

    move/from16 v16, v22

    move-object/from16 v19, p6

    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateUSIMAdnBySearch(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v22, v10

    move-object v2, v9

    goto :goto_4

    :cond_1
    move-object/from16 v21, v9

    move/from16 v22, v10

    :try_start_3
    new-instance v4, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-direct {v4, v11, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-direct {v5, v13, v14}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    move/from16 v3, v22

    move-object/from16 v6, p6

    move-object/from16 v7, v20

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateAdnBySearchEx(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    :goto_1
    move-object/from16 v2, v21

    :try_start_4
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_4

    :cond_2
    move-object v2, v9

    move/from16 v22, v10

    const-string v3, "Failure while trying to update by search due to uninitialised adncache"

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iget-object v0, v2, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    :catchall_3
    move-exception v0

    move-object v2, v9

    move/from16 v22, v10

    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    const-string v0, "updateIccRecords"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v4, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    move-object p1, v2

    :cond_1
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/uicc/UniRuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->getUniAdnRecordCache()Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    :cond_2
    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/UniSIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getUniAdnRecordCache()Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    :goto_1
    return-void
.end method

.method public updateUsimAasByIndex(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-nez v0, :cond_0

    const-string v0, "updateUsimAasByIndex failed because mUniAdnCache is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateAasByIndex(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateUsimAasBySearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-nez v0, :cond_0

    const-string v0, "updateUsimAasBySearch failed because mUniAdnCache is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateAasBySearch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateUsimGroupByIndex(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-nez v0, :cond_0

    const-string v0, "updateUsimGroupById failed because mUniAdnCache is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateGasByIndex(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateUsimGroupBySearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    if-nez v0, :cond_0

    const-string v0, "updateUsimGroupBySearchEx failed because mUniAdnCache is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateGasBySearch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
