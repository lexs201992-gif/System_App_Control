.class public Lcom/android/account/SdnSyncService;
.super Landroid/app/Service;
.source "SdnSyncService.java"


# static fields
.field private static sSyncAdapter:Lcom/android/account/SdnSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/account/SdnSyncService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p0, "SdnSyncService"

    const-string p1, "onBind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/account/SdnSyncService;->sSyncAdapter:Lcom/android/account/SdnSyncAdapter;

    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "SdnSyncService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/account/SdnSyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/account/SdnSyncService;->sSyncAdapter:Lcom/android/account/SdnSyncAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/account/SdnSyncAdapter;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/account/SdnSyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/android/account/SdnSyncService;->sSyncAdapter:Lcom/android/account/SdnSyncAdapter;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
