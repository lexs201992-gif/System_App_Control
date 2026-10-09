.class public Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;
.super Ljava/lang/Object;
.source "UniOptimizedNetworkTypesFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniOptimizedNetworkTypesFactory"

.field private static sInstance:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;


# instance fields
.field public mUniOptimizedImplList:[Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;->sInstance:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;->mUniOptimizedImplList:[Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;->mUniOptimizedImplList:[Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;

    new-instance v4, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;-><init>(Landroid/content/Context;I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;
    .locals 2

    const-class v0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;->sInstance:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;->sInstance:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;->sInstance:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getImpl(I)Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesFactory;->mUniOptimizedImplList:[Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;

    aget-object v0, v0, p1

    return-object v0
.end method
