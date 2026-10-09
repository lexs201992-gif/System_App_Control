.class public Lcom/android/unisoc/telephony/server/RadioInteractorFactory;
.super Ljava/lang/Object;
.source "RadioInteractorFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RadioInteractorFactory"

.field private static volatile sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorFactory;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRadioInteractorCores:[Lcom/android/unisoc/telephony/server/RadioInteractorCore;

.field private mRadioInteractorHandler:[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->initRadioInteractorNotifier()Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->startRILoop(Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mRadioInteractorHandler:[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    invoke-static {p1, v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->init(Landroid/content/Context;Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;)Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    return-void
.end method

.method public static getInstance()Lcom/android/unisoc/telephony/server/RadioInteractorFactory;
    .locals 1

    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorFactory;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/unisoc/telephony/server/RadioInteractorFactory;
    .locals 2

    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorFactory;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;

    invoke-direct {v1, p0}, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorFactory;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorFactory;

    return-object v0
.end method


# virtual methods
.method public getRadioInteractorCore(I)Lcom/android/unisoc/telephony/server/RadioInteractorCore;
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mRadioInteractorCores:[Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mRadioInteractorHandler:[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initRadioInteractorNotifier()Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;
    .locals 1

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    invoke-direct {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;-><init>()V

    return-object v0
.end method

.method public startRILoop(Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;)V
    .locals 6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v1, v0, [Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iput-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mRadioInteractorCores:[Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-array v1, v0, [Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    iput-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mRadioInteractorHandler:[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mRadioInteractorCores:[Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mRadioInteractorHandler:[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    new-instance v3, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mRadioInteractorCores:[Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1, v5}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;Landroid/content/Context;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
