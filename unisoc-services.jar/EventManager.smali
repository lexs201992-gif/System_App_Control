.class public Lcom/unipnp/server/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFM:Lcom/unipnp/server/FeatureManager;

.field private mSysStatusObserver:Lcom/unipnp/server/systemevent/SystemStatusObserver;

.field private mSystemBroadcastReceiver:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;

.field private mSystemListener:Lcom/unipnp/server/systemevent/SystemListener;

.field private final mUms:Lcom/unipnp/server/UnionManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unipnp/server/EventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/EventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unipnp/server/UnionManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unipnp/server/EventManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipnp/server/EventManager;->mUms:Lcom/unipnp/server/UnionManagerService;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/EventManager;->mSystemBroadcastReceiver:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/unipnp/server/EventManager;->mSysStatusObserver:Lcom/unipnp/server/systemevent/SystemStatusObserver;

    invoke-virtual {v0, p1}, Lcom/unipnp/server/systemevent/SystemStatusObserver;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/unipnp/server/EventManager;->mSystemListener:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-virtual {v0, p1}, Lcom/unipnp/server/systemevent/SystemListener;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/EventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUms()Lcom/unipnp/server/UnionManagerService;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/EventManager;->mUms:Lcom/unipnp/server/UnionManagerService;

    return-object v0
.end method

.method public onReportEvent(Landroid/app/unipnp/parcel/UniEventData;)V
    .locals 3

    sget-object v0, Lcom/unipnp/server/EventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReportEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipnp/server/EventManager;->mUms:Lcom/unipnp/server/UnionManagerService;

    invoke-virtual {v1}, Lcom/unipnp/server/UnionManagerService;->getFeatureManager()Lcom/unipnp/server/FeatureManager;

    move-result-object v1

    iput-object v1, p0, Lcom/unipnp/server/EventManager;->mFM:Lcom/unipnp/server/FeatureManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/unipnp/server/FeatureManager;->dispatchEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    goto :goto_0

    :cond_0
    const-string v1, "onReportEvent error, FeatureManager is null. "

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSystemReady()V
    .locals 1

    new-instance v0, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;-><init>(Lcom/unipnp/server/EventManager;)V

    iput-object v0, p0, Lcom/unipnp/server/EventManager;->mSystemBroadcastReceiver:Lcom/unipnp/server/systemevent/SystemBroadcastReceiver;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemStatusObserver;

    invoke-direct {v0, p0}, Lcom/unipnp/server/systemevent/SystemStatusObserver;-><init>(Lcom/unipnp/server/EventManager;)V

    iput-object v0, p0, Lcom/unipnp/server/EventManager;->mSysStatusObserver:Lcom/unipnp/server/systemevent/SystemStatusObserver;

    new-instance v0, Lcom/unipnp/server/systemevent/SystemListener;

    invoke-direct {v0, p0}, Lcom/unipnp/server/systemevent/SystemListener;-><init>(Lcom/unipnp/server/EventManager;)V

    iput-object v0, p0, Lcom/unipnp/server/EventManager;->mSystemListener:Lcom/unipnp/server/systemevent/SystemListener;

    return-void
.end method
