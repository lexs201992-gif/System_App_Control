.class public Landroid/telephony/ModemStatusTrackerImpl;
.super Landroid/telephony/ModemStatusTracker;
.source "ModemStatusTrackerImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ModemStatusTrackerImpl"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mOnModemStatusListener:Landroid/telephony/ModemStatusTracker$OnModemStatusChangedListener;

.field private blacklist mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private blacklist mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/ModemStatusTrackerImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ModemStatusTrackerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioInteractor(Landroid/telephony/ModemStatusTrackerImpl;)Lcom/android/unisoc/telephony/RadioInteractor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ModemStatusTrackerImpl;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioInteractorListener(Landroid/telephony/ModemStatusTrackerImpl;)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ModemStatusTrackerImpl;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRadioInteractor(Landroid/telephony/ModemStatusTrackerImpl;Lcom/android/unisoc/telephony/RadioInteractor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ModemStatusTrackerImpl;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRadioInteractorListener(Landroid/telephony/ModemStatusTrackerImpl;Lcom/android/unisoc/telephony/RadioInteractorListener;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ModemStatusTrackerImpl;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRadioInteractorListener(Landroid/telephony/ModemStatusTrackerImpl;I)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ModemStatusTrackerImpl;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyModemStatusChanged(Landroid/telephony/ModemStatusTrackerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ModemStatusTrackerImpl;->notifyModemStatusChanged(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/telephony/ModemStatusTracker;-><init>()V

    const-string v0, "ModemStatusTrackerImpl"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/telephony/ModemStatusTrackerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist addRadioInteractorListener()V
    .locals 5

    const-string v0, "ModemStatusTrackerImpl"

    const-string v1, "addRadioInteractorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.unisoc.telephony.server"

    const-string v2, "com.android.unisoc.telephony.server.RadioInteractorService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ModemStatusTrackerImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/telephony/ModemStatusTrackerImpl$1;

    invoke-direct {v3, p0}, Landroid/telephony/ModemStatusTrackerImpl$1;-><init>(Landroid/telephony/ModemStatusTrackerImpl;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private blacklist getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 1

    new-instance v0, Landroid/telephony/ModemStatusTrackerImpl$2;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ModemStatusTrackerImpl$2;-><init>(Landroid/telephony/ModemStatusTrackerImpl;I)V

    return-object v0
.end method

.method private blacklist notifyModemStatusChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify modem status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModemStatusTrackerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ModemStatusTrackerImpl;->mOnModemStatusListener:Landroid/telephony/ModemStatusTracker$OnModemStatusChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/telephony/ModemStatusTracker$OnModemStatusChangedListener;->onModemStatusChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addListener(Landroid/telephony/ModemStatusTracker$OnModemStatusChangedListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModemStatusTrackerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/telephony/ModemStatusTrackerImpl;->mOnModemStatusListener:Landroid/telephony/ModemStatusTracker$OnModemStatusChangedListener;

    invoke-direct {p0}, Landroid/telephony/ModemStatusTrackerImpl;->addRadioInteractorListener()V

    return-void
.end method

.method public blacklist removeListener(Landroid/telephony/ModemStatusTracker$OnModemStatusChangedListener;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModemStatusTrackerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ModemStatusTrackerImpl;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemStatusTrackerImpl;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ModemStatusTrackerImpl;->mOnModemStatusListener:Landroid/telephony/ModemStatusTracker$OnModemStatusChangedListener;

    return-void
.end method
